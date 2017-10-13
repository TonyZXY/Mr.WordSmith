package database;

import dto.Product;
import dto.Staff;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

import static java.lang.Integer.*;

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


    private String getSalesReportSQL = "SELECT SUM(quantity) FROM order_list WHERE (time BETWEEN time1 AND time2) AND product_id = 'pid'";

    private String getOrderDetailSQL = "SELECT * FROM order_list WHERE order_id = 'order_id'";

    private String getStockLevelSQL = "SELECT * FROM products WHERE product_id = 'pid'";


    public static HashMap getSalesReport(Date start, Date end) {
        HashMap<Product, Integer> salesReport = new HashMap<>();
        try {
            ArrayList<Product> products = DatabaseProduct.getProductList();
            for (Product p : products) {
                String sql = "SELECT SUM(quantity) FROM order_list WHERE (time BETWEEN '" + start + "' AND '" + end + "') AND product_id = '" + p.getProductID() + "';";
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
                    salesReport.put(p, resultSet.getInt(1));
                    System.out.println(resultSet.getInt(1));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Database sent");
        return salesReport;
    }

    public static void updateStockLevel(Product product, int number) {
        try {
            int num = product.getStock();
            String sql = "UPDATE products SET stock ='" + (num + number) + "' WHERE product_id ='" + product.getProductID() + "';";
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateStaffDetail(Staff staff){

    }

    public static void insertNewStaff(Staff staff){
        try{
            String sql = "INSERT INTO stuffs (stuff_id,password,email,address,first_name,last_name,phone,admin) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,Integer.valueOf(staff.getStuffID()));
            statement.setString(2,staff.getPassword());
            statement.setString(3,staff.getEmail());
            statement.setString(4,staff.getAddress());
            statement.setString(5,staff.getFirst_name());
            statement.setString(6,staff.getLast_name());
            statement.setString(7,staff.getPhoneNumber());
            statement.setString(8,staff.getAdmin());
            statement.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Staff> getAllStaff(){
        ArrayList<Staff> staffs = new ArrayList<>();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM stuffs;");
            while (resultSet.next()){
                Staff staff = new Staff();
                staff.setStuffID(resultSet.getString("stuff_id"));
                staff.setPassword(resultSet.getString("password"));
                staff.setAddress(resultSet.getString("address"));
                staff.setAdmin(resultSet.getString("admin"));
                staff.setEmail(resultSet.getString("email"));
                staff.setFirst_name(resultSet.getString("first_name"));
                staff.setLast_name(resultSet.getString("last_name"));
                staff.setPhoneNumber(resultSet.getString("phone"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return staffs;
    }

    public static void removeStaff(String id){
        try{
            Statement statement = connection.createStatement();
            statement.execute("DELETE FROM stuffs WHERE stuff_id = '"+id+"';");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}

