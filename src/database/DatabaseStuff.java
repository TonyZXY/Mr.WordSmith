package database;

import dto.Stuff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseStuff {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static Stuff getStuff(String id){
        Stuff stuff = new Stuff();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM stuffs WHERE stuff_id = '"+id+"';");
            if(resultSet.next()){
                stuff.setStuffID(id);
                stuff.setPassword(resultSet.getString("password"));
                stuff.setAddress(resultSet.getString("address"));
                stuff.setAdmin(resultSet.getString("admin"));
                stuff.setEmail(resultSet.getString("email"));
                stuff.setFirst_name(resultSet.getString("first_name"));
                stuff.setLast_name(resultSet.getString("last_name"));
                stuff.setPhoneNumber(resultSet.getString("phone"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return stuff;
    }
}
