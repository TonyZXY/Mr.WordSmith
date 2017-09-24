package database;

import dto.User;

import java.sql.*;

public class DatabaseInsertUser {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static void insertUser(User user){
        try{
            double userID = 1000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(user_id) FROM users;");
            if(resultSet.next()){
                userID = resultSet.getDouble(1)+1;
            }

            String query = "Insert into users (user_id,first_name,last_name,email,address,phone,birthday,password,sub) VALUES (?,?,?,?,?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, String.valueOf(userID));
            statement.setString(2,user.getFirstName());
            statement.setString(3,user.getLastName());
            statement.setString(4,user.getEmail());
            statement.setString(5,user.getAddress());
            statement.setString(6,user.getPhone());
            statement.setString(7,user.getBirthday());
            statement.setString(8,user.getPassword());
            statement.setString(9,"1");

            statement.execute();


        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
