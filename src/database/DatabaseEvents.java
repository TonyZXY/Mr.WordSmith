package database;

import dto.EmailEvent;
import dto.Event;
import dto.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;

public class DatabaseEvents {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static ArrayList getEvent(User user) {
        ArrayList<Event> events = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM reminder_list WHERE userid ='" + user.getUserID() + "';");
            while (resultSet.next()) {
                events.add(new Event(resultSet.getString("time"), resultSet.getString("message"), resultSet.getString("reminder_id")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return events;
    }

    public static void addNewEvent(String userID, Event event) {
        try {
            int eventID = 10000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(reminder_id) FROM reminder_list;");
            if (resultSet.next()) {
                eventID = resultSet.getInt(1) + 1;
            }


            String query = "INSERT INTO reminder_list (reminder_id,userid,time,message) VALUES (?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, String.valueOf(eventID));
            statement.setString(2, userID);
            statement.setString(3, event.getDate());
            statement.setString(4, event.getMessage());

            statement.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static ArrayList<EmailEvent> getEvents() {
        ArrayList<User> users = DatabaseUser.getAllUsers();
        ArrayList<EmailEvent> emailEvents = new ArrayList<>();
        try {
            Calendar calendar = Calendar.getInstance();
            int day = calendar.get(Calendar.DAY_OF_MONTH);
            int month = calendar.get(Calendar.MONTH);
            EmailEvent emailEvent = new EmailEvent();
            for(User user:users) {
                for (int i = 0; i < 10; i++) {
                    String date = (day+i)+"-"+month;
                    String sql = "SELECT * FROM reminder_list WHERE time ='"+date+"' AND userid = '"+user.getUserID()+"';";
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(sql);
                    ArrayList<Event> events = new ArrayList<>();
                    while (resultSet.next()){
                        Event event = new Event();
                        event.setMessage(resultSet.getString("message"));
                        event.setDate(resultSet.getString("time"));
                        event.setEventID(resultSet.getString("reminder_id"));
                        events.add(event);
                    }
                    emailEvent.setEvents(events);
                    emailEvent.setUserID(user.getUserID());
                }
                emailEvents.add(emailEvent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return emailEvents;
    }
}
