package database;

import dto.Stuff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 10/10/17
 */


public class DatabaseStuff {

    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static Stuff getStuff(String id) {
        Stuff stuff = new Stuff();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM stuffs WHERE stuff_id = '" + id + "';");
            if (resultSet.next()) {
                stuff.setStuffID(id);
                stuff.setPassword(resultSet.getString("password"));
                stuff.setAddress(resultSet.getString("address"));
                stuff.setAdmin(resultSet.getString("admin"));
                stuff.setEmail(resultSet.getString("email"));
                stuff.setFirst_name(resultSet.getString("first_name"));
                stuff.setLast_name(resultSet.getString("last_name"));
                stuff.setPhoneNumber(resultSet.getString("phone"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stuff;
    }


    private String getSalesReport = "SELECT SUM(quantity) FROM order_list WHERE (time BETWEEN time1 AND time2) AND product_id = 'pid'";

    private String getOrderDetail = "SELECT * FROM order_list WHERE order_id = 'order_id'";

    private String getStockLevel = "SELECT * FROM products WHERE product_id = 'pid'";
}

