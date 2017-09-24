package database;

import dto.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseGetUser {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    /**
     * This method is to get user information from database and generate a User Object
     * to store the data in order to pass the data to other classes
     *
     * @param userNameEmail email input
     * @return User Object getting from database
     */
    public static User getUser(String userNameEmail) {
        User user = new User();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * From Users " + " WHERE email = '" + userNameEmail + "';");
            if (resultSet.next()) {
                user.setUserID(resultSet.getString("user_id"));
                user.setFirstName(resultSet.getString("first_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getString("address"));
                user.setPhone(resultSet.getString("phone"));
                user.setBirthday(resultSet.getString("birthday"));
                user.setPassword(resultSet.getString("password"));
                user.setSubs(resultSet.getBoolean("sub"));
                System.out.println(user.getUserID());
                System.out.println("user got from database");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}