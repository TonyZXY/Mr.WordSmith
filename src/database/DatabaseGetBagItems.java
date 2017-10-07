package database;

import dto.CustomizedProduct;
import dto.Item;
import dto.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class DatabaseGetBagItems {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static ArrayList getBag(String userID) {
        ArrayList<Item> items = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bagtables WHERE bag_id ='" + userID + "';");
            while (resultSet.next()) {

                items.add(new Item(DatabaseGetProduct.getProduct("MWE001"), resultSet.getInt("MWE001")));
                items.add(new Item(DatabaseGetProduct.getProduct("MWE002"), resultSet.getInt("MWE002")));
                items.add(new Item(DatabaseGetProduct.getProduct("MWE003"), resultSet.getInt("MWE003")));
                String ids;
                if(((ids = resultSet.getString("MWE004"))!=null)) {
                    StringTokenizer st = new StringTokenizer(ids,",");
                    ArrayList<String> idList = new ArrayList<>();
                    System.out.println(ids);
                    while (st.hasMoreTokens()){
                        idList.add(st.nextToken());
                    }
                    for(String s:idList){
                        Item i = new Item(DatabaseGetProduct.getProduct("MWE004"),1);
                        i.getProduct().setCustomizeID(s);
                        items.add(i);
                    }
//                    items.add(new Item(DatabaseGetProduct.getProduct("MWE004"),
//                            CustomizedProduct.getNumberFromIDs(ids)));
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return items;
    }
}
