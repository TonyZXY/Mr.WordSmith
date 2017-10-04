package database;

import dto.Event;
import dto.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DatabaseGetEvents {
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
}
