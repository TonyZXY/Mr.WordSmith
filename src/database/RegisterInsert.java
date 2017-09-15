package database;

import dto.User;

import java.sql.Connection;
import java.sql.SQLException;

public class RegisterInsert {

    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static void Insert(User user){



        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
