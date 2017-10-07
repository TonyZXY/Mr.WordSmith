package database;

import dto.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseAddBagItem {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

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
}
