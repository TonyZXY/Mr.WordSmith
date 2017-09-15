package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private final String USERNAME = "root";
    private final String PASSWORD = "zxy19910313";
    private final String CONN_STRING = "jdbc:mysql://localhost/Mr.Wordsmith";


    private static DatabaseConnection instence = null;

    private Connection connection = null;

    private DatabaseConnection(){

    }

    public static DatabaseConnection getInstence(){
        if(instence ==null){
            instence = new DatabaseConnection();
        }
        return instence;
    }

    private boolean openConnection(){
        try {
            connection = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    public Connection getConnection(){
        if(connection ==null){
            if(openConnection()){
                System.out.println("Connection Opened");
                return connection;
            }else
                return null;
        }
        return connection;
    }

    public void close(){
        System.out.println("Closing Connection");
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection = null;
    }

}
