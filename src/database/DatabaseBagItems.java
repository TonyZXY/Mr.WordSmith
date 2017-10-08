package database;

import dto.Item;
import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

public class DatabaseBagItems {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();


    public static ArrayList getBag(String userID) {
        ArrayList<Item> items = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM bagtables WHERE bag_id ='" + userID + "';");
            while (resultSet.next()) {

                items.add(new Item(DatabaseProduct.getProduct("MWE001"), resultSet.getInt("MWE001")));
                items.add(new Item(DatabaseProduct.getProduct("MWE002"), resultSet.getInt("MWE002")));
                items.add(new Item(DatabaseProduct.getProduct("MWE003"), resultSet.getInt("MWE003")));
                String ids;
                if(((ids = resultSet.getString("MWE004"))!=null)) {
                    StringTokenizer st = new StringTokenizer(ids,",");
                    ArrayList<String> idList = new ArrayList<>();
                    System.out.println(ids);
                    while (st.hasMoreTokens()){
                        idList.add(st.nextToken());
                    }
                    for(String s:idList){
                        Item i = new Item(DatabaseProduct.getProduct("MWE004"),1);
                        i.getProduct().setCustomizeID(s);
                        items.add(i);
                    }
//                    items.add(new Item(DatabaseProduct.getProduct("MWE004"),
//                            CustomizedProduct.getNumberFromIDs(ids)));
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return items;
    }

    public static void AddBagItem(User user, String productID, int number) {
        try {
            int i = 0;
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT "+productID+" FROM bagTables WHERE bag_id ='"+user.getUserID()+"';");
            if (resultSet.next()){
                i=resultSet.getInt(1);
                String sql = "UPDATE bagTables SET "+productID+" = '"+(i+number)+"' WHERE bag_id ='"+user.getUserID()+"';";
                statement.executeUpdate(sql);
            }else {
                String sql = "INSERT INTO bagTables (bag_id,"+productID+") VALUES (?,?)";
                PreparedStatement statement1 = connection.prepareStatement(sql);
                statement1.setString(1,String.valueOf(user.getUserID()));
                statement1.setInt(2,number);
                statement1.execute();
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }


    public static void RemoveCustomizedProduct(User user, String id) {
        try {
            String sql = "SELECT MWE004 FROM bagtables WHERE bag_id ='" + user.getUserID() + "';";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            String ids = "";
            while (resultSet.next()) {
                ids = resultSet.getString(1);
            }
            StringTokenizer st = new StringTokenizer(ids, ",");
            HashMap<String, String> idList = new HashMap<>();
            System.out.println(ids);
            while (st.hasMoreTokens()) {
                String i = st.nextToken();
                idList.put(i, i);
            }
            System.out.println("ID " + id);
            idList.remove(id);
            String result = "";
            if (idList.size() > 0) {
                for (String s : idList.values()) {
                    result += (s + ",");
                }
            }
            if (result.length() > 1) {
                result = result.substring(0, result.length() - 1);
            }
            System.out.println("result " + result);
            String updateSQL = "UPDATE bagTables SET MWE004 = '" + result + "' WHERE bag_id ='" + user.getUserID() + "';";
            statement.executeUpdate(updateSQL);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateBagItem(String productID, int number, User user){
        try{
            String sql = "UPDATE bagTables SET "+productID+ " ='"+number+"' WHERE bag_id='"+user.getUserID()+"';";
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void updateBagItems(ArrayList<Item> items, User user){
        for(Item item:items){
            updateBagItem(item.getProduct().getProductID(),item.getNumber(),user);
        }
    }
}
