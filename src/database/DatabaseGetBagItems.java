package database;

import dto.CustomizedProduct;
import dto.Item;
import dto.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DatabaseGetBagItems {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static ArrayList getBag(String userID){
        ArrayList<Item> items = new ArrayList<>();
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bagtables WHERE bag_id ='"+userID+"';");
            while (resultSet.next()){
                items.add(new Item(DatabaseGetProduct.getProduct("MWE001"),resultSet.getInt("pro_1")));
                items.add(new Item(DatabaseGetProduct.getProduct("MWE002"),resultSet.getInt("pro_2")));
                items.add(new Item(DatabaseGetProduct.getProduct("MWE003"),resultSet.getInt("pro_3")));
//                items.add(new Item(DatabaseGetProduct.getProduct("MWE004"),
//                        CustomizedProduct.getNumberFromID(resultSet.getString("cus_pro"))));
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return items;
    }
}
