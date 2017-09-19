package database;

import dto.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseGetUser {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static User getUser(String userNameEmail){
        User user = new User();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * From Users "+" WHERE email = '"+userNameEmail+"';");
            if(resultSet.next()){

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
