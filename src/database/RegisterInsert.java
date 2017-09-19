package database;

import dto.User;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterInsert {

    private static Connection connection = DatabaseConnection.getInstence().getConnection();
    private static Statement statement = null;
    private static ResultSet resultSet = null;

    public static void Insert(User user){
        try {
            statement = connection.createStatement();

            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
