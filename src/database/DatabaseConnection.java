package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * This class is to create a Connection that need to be used
 * by the whole application.
 */
public class DatabaseConnection {
    private final String USERNAME = "root";
    private final String PASSWORD = "zxy19910313";
    private final String CONN_STRING = "jdbc:mysql://localhost/Mr.Wordsmith?autoReconnect=true&useSSL=false";


    private static DatabaseConnection instence = null;

    private Connection connection = null;

    private DatabaseConnection() {

    }

    public static DatabaseConnection getInstence() {
        if (instence == null) {
            instence = new DatabaseConnection();
        }
        return instence;
    }

    private boolean openConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public Connection getConnection() {
        if (connection == null) {
            if (openConnection()) {
                System.out.println("Connection Opened");
                return connection;
            } else
                return null;
        }
        return connection;
    }

    public void close() {
        System.out.println("Closing Connection");
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection = null;
    }

}
