package database;

import dto.User;

import java.sql.Connection;
import java.sql.Statement;

public class DatabaseUpdateBagItem {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static void updateBagItem(String productID, int number, User user){
        try{
            String sql = "UPDATE bagTables SET "+productID+ " ='"+number+"' WHERE bag_id='"+user.getUserID()+"';";
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
