package database;

import com.mysql.jdbc.PreparedStatement;

import java.sql.*;

public class DatabaseTest {


    public static final String CONN_STRING = "jdbc:mysql://localhost/Mr.Wordsmith?autoReconnect=true&useSSL=false";
    public static final String USER_NAME = "root";
    public static final String PASSWORD = "zxy19910313";


    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;


        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(CONN_STRING,USER_NAME,PASSWORD);
            statement = connection.createStatement();
            resultSet = statement.executeQuery("Select * From Users ;");
            System.out.println("database connected");
            if(resultSet.next()){
                System.out.println(resultSet.getString(1)+" "+resultSet.getString(2)+" "+
                        resultSet.getString(3)+" "+resultSet.getString(4)+" "+
                        resultSet.getString(5)+" "+resultSet.getString(6)+" "+
                        resultSet.getString(7)+" "+resultSet.getString(8)+" "+
                        resultSet.getString(9));
                System.out.println("database connection successful");
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("SQLException: " + e.getMessage());
        }finally {
            if(resultSet!=null){
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }resultSet=null;

            }
            if(statement!=null){
                try{
                    statement.close();
                }catch (SQLException e){
                    e.printStackTrace();
                }statement =null;
            }
            if(connection!=null){
                try{
                    connection.close();
                    System.out.println("connection closed");
                }catch (SQLException e){
                    e.printStackTrace();
                }
            }

        }
    }
}
