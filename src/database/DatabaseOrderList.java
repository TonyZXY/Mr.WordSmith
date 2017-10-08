package database;

import dto.Item;
import dto.Order;
import dto.Product;
import dto.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

public class DatabaseOrderList {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();
    private static HashMap<String,Product> productHashMap = DatabaseProduct.getProducts();


    public static Order getOrderFromDatabase(String orderID){
        Order order = new Order();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM order_list WHERE order_id ='"+orderID+"';");

            while (resultSet.next()){
                order.setContactNumber(resultSet.getString("contact_number"));
                order.setDiscount(resultSet.getDouble("order_discount"));
                order.setOrderID(Integer.valueOf(orderID));
                order.setPayment(resultSet.getString("payment"));
                order.setShippingAddress(resultSet.getString("shipping_address"));
                order.setShippingTime(resultSet.getString("shipping_time"));
                order.setTime(resultSet.getString("time"));
                String productID = resultSet.getString("product_id");
                int quantity = resultSet.getInt("quantity");
                order.getOrderList().add(new Item(productHashMap.get(productID),quantity));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return order;
    }


    public static ArrayList getOrderList(User user){
        ArrayList<Order> orders = new ArrayList<>();
        try{
            HashMap<String,String> orderIDs = new HashMap<>();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT order_id FROM order_list WHERE user_id ='"+user.getUserID()+"';");
            while (resultSet.next()){
                orderIDs.put(resultSet.getString("order_id"),resultSet.getString("order_id"));
            }

            for(String orderid : orderIDs.values()){
                Order order = getOrderFromDatabase(orderid);
                orders.add(order);
            }


//            for (String orderid: orderIDs) {
//                Order order = getOrderFromDatabase(orderid);
//                orders.add(order);
//            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return orders;
    }
}
