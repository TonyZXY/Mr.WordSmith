package database;

import dto.Event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DatabaseInsertNewEvent {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static void addNewEvent(String userID, Event event) {
        try {
            int eventID = 10000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(reminder_id) FROM reminder_list;");
            if (resultSet.next()) {
                eventID = resultSet.getInt("reminder_id") + 1;
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
}
