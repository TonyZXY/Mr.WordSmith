package database;

import dto.Product;
import dto.User;
import dto.Item;
import dto.Order;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class DatabaseOrderList {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();
    private static HashMap<String, Product> productHashMap = DatabaseProduct.getProducts();


    public static Order getOrderFromDatabase(String orderID) {
        Order order = new Order();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM order_list WHERE order_id ='" + orderID + "';");

            while (resultSet.next()) {
                order.setContactNumber(resultSet.getString("contact_number"));
                order.setDiscount(resultSet.getDouble("order_discount"));
                order.setOrderID(Integer.valueOf(orderID));
                order.setPayment(resultSet.getString("payment"));
                order.setShippingAddress(resultSet.getString("shipping_address"));
                order.setShippingTime(resultSet.getString("shipping_time"));
                order.setTime(resultSet.getDate("time"));
                String productID = resultSet.getString("product_id");
                int quantity = resultSet.getInt("quantity");
                order.getOrderList().add(new Item(productHashMap.get(productID), quantity));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return order;
    }


    public static ArrayList getOrderList(User user) {
        ArrayList<Order> orders = new ArrayList<>();
        try {
            HashMap<String, String> orderIDs = new HashMap<>();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT order_id FROM order_list WHERE user_id ='" + user.getUserID() + "';");
            while (resultSet.next()) {
                orderIDs.put(resultSet.getString("order_id"), resultSet.getString("order_id"));
            }

            for (String orderid : orderIDs.values()) {
                Order order = getOrderFromDatabase(orderid);
                orders.add(order);
            }


//            for (String orderid: orderIDs) {
//                Order order = getOrderFromDatabase(orderid);
//                orders.add(order);
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    public static boolean getDiscount(User user) {
        boolean discount = true;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT order_id FROM order_list WHERE user_id = '" + user.getUserID() + "';");
            while (resultSet.next()) {
                if (resultSet.getString(1) != null) {
                    discount = false;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return discount;
    }

    public static int getMaxOrderID() {
        int i = 1000000001;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT max(order_id) FROM order_list;");
            while (resultSet.next()) {
                i = resultSet.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i + 1;
    }

    public static void insertOrder(Order order, User user) {
        try {
            String sql = "insert into order_list (product_id,user_id,order_id,quantity,payment,order_discount,shipping_address,time,contact_number,first_name,last_name) values (?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement statement = connection.prepareStatement(sql);
            for (Item item : order.getOrderList()) {
                statement.setString(1, item.getProduct().getProductID());
                statement.setInt(2, Integer.valueOf(user.getUserID()));
                statement.setInt(3, order.getOrderID());
                statement.setInt(4, item.getNumber());
                statement.setString(5, order.getPayment());
                statement.setDouble(6, order.getDiscount());
                statement.setString(7, order.getShippingAddress());
                statement.setDate(8, order.getTime());
                statement.setString(9, String.valueOf(order.getContactNumber()));
                statement.setString(10, order.getFirstName());
                statement.setString(11, order.getLastName());
                statement.execute();
                statement.executeUpdate("UPDATE products SET stock = stock - " + item.getNumber() + " WHERE product_id ='" + item.getProduct().getProductID() + "';");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
