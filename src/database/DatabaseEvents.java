package database;

import dto.EmailEvent;
import dto.Event;
import dto.User;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseEvents {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();
    public static ArrayList getEvent(User user){
        ArrayList<Event> events = new ArrayList<>();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM reminder_list WHERE userid ='"+user.getUserID()+"';");
            while (resultSet.next()){
                events.add(new Event(resultSet.getString("time"),resultSet.getString("message"),resultSet.getString("reminder_id")));
            }
        }catch (Exception e){
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
            statement.setString(1,String.valueOf(eventID));
            statement.setString(2,userID);
            statement.setString(3,event.getDate());
            statement.setString(4,event.getMessage());

            statement.execute();

        }catch (Exception e){
            e.printStackTrace();
        }
    }


    public static ArrayList<EmailEvent> getEvents(Date start){
        ArrayList<EmailEvent> emailEvents = new ArrayList<>();
        try{
            String sql = "SELECT * FROM reminder_list WHERE ";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
        return emailEvents;
    }
}
