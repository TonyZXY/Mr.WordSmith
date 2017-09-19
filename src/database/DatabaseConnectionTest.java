package database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnectionTest {
    public static void main(String[] args) {
        Statement statement = null;
        ResultSet resultSet = null;
        Connection connection = DatabaseConnection.getInstence().getConnection();
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery("Select * From Users ;");
            System.out.println("database connected");
            if (resultSet.next()) {
                System.out.println(resultSet.getString(1) + " " + resultSet.getString(2) + " " +
                        resultSet.getString(3) + " " + resultSet.getString(4) + " " +
                        resultSet.getString(5) + " " + resultSet.getString(6) + " " +
                        resultSet.getString(7) + " " + resultSet.getString(8) + " " +
                        resultSet.getString(9));
                System.out.println("database connection successful");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("SQLException: " + e.getMessage());
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                resultSet = null;

            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                statement = null;
            }
            if (connection != null) {
                try {
                    connection.close();
                    System.out.println("connection closed");
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
