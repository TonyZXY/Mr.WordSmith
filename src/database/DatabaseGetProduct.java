package database;

import dto.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;

public class DatabaseGetProduct {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static HashMap getProducts(){
        HashMap<String, Product> products = new HashMap<>();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * From products;");
            while (resultSet.next()){
                products.put(resultSet.getString("product_id"),new Product(resultSet.getString("product_id"),
                        resultSet.getString("prodoct_name"),resultSet.getDouble("price"),
                        resultSet.getInt("stock"),resultSet.getDouble("discount"),
                        resultSet.getInt("reorder_limit"),resultSet.getInt("reorder_time")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return products;
    }

    public static Product getProduct(String productID){
        Product product = new Product();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM products WHERE product_id = '"+productID +"';");
            while (resultSet.next()){
                product.setProductID(resultSet.getString("product_id"));
                product.setProductName(resultSet.getString("product_name"));
                product.setPrice(resultSet.getDouble("price"));
                product.setDiscount(resultSet.getDouble("discount"));
                product.setStock(resultSet.getInt("stock"));
                product.setReorderTime(resultSet.getInt("reorder_time"));
                product.setReorderLimit(resultSet.getInt("reorder_limit"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return product;
    }
}