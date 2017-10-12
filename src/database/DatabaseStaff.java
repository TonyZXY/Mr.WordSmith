package database;

import dto.Staff;
import dto.Staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 10/10/17
 */


public class DatabaseStaff {

    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static Staff getStuff(String id) {
        Staff staff = new Staff();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM stuffs WHERE stuff_id = '" + id + "';");
            if (resultSet.next()) {
                staff.setStuffID(id);
                staff.setPassword(resultSet.getString("password"));
                staff.setAddress(resultSet.getString("address"));
                staff.setAdmin(resultSet.getString("admin"));
                staff.setEmail(resultSet.getString("email"));
                staff.setFirst_name(resultSet.getString("first_name"));
                staff.setLast_name(resultSet.getString("last_name"));
                staff.setPhoneNumber(resultSet.getString("phone"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return staff;
    }


    private String getSalesReport = "SELECT SUM(quantity) FROM order_list WHERE (time BETWEEN time1 AND time2) AND product_id = 'pid'";

    private String getOrderDetail = "SELECT * FROM order_list WHERE order_id = 'order_id'";

    private String getStockLevel = "SELECT * FROM products WHERE product_id = 'pid'";
}

