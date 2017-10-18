package database;

import dto.User;

import java.sql.*;

public class DatabaseUser {
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
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public static void updateUserDetail(User user) {
        try {
            String UserID = user.getUserID();
            String FN = user.getFirstName();
            String LN = user.getLastName();
            String DoB = user.getBirthday();
            String Email = user.getEmail();
            String Phone = user.getPhone();
            String Address = user.getAddress();
//            String password = user.getPassword();

            String sql = "UPDATE Users SET first_name ='" + FN + "', last_name ='" + LN + "', birthday ='" + DoB + "', address ='" + Address + "', phone ='" + Phone + "' WHERE user_id ='" + UserID + "';";
            Connection connection = DatabaseConnection.getInstence().getConnection();
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * This method is to insert User data into database
     *
     * @param user User object that need to passed in
     */
    public static void insertUser(User user) {
        try {
            int userID = 1000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(user_id) FROM users;");
            if (resultSet.next()) {
                userID = resultSet.getInt(1) + 1;
            }

            String query = "Insert into users (user_id,first_name,last_name,email,address,phone,birthday,password,sub) VALUES (?,?,?,?,?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, String.valueOf(userID));
            statement.setString(2, user.getFirstName());
            statement.setString(3, user.getLastName());
            statement.setString(4, user.getEmail());
            statement.setString(5, user.getAddress());
            statement.setString(6, user.getPhone());
            statement.setString(7, user.getBirthday());
            statement.setString(8, user.getPassword());
            statement.setString(9, "1");
            statement.execute();

            Statement statement1 = connection.createStatement();
            statement1.execute("INSERT INTO bagTables VALUES ('" + userID + "',0,0,0,'',0,0,0,0,0,0,'');");


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void changePassword(User user) {
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate("UPDATE users SET password ='" + user.getPassword() + "' WHERE user_id = '" + user.getUserID() + "';");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
