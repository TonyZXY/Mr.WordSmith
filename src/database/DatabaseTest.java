package database;

import dto.CustomizedProduct;
import model.CustomizeProductAddition;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DatabaseTest {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    public static void m(String[] args) {
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * From customized;");
            while (resultSet.next()){
                System.out.println(resultSet.getInt(1)+" "+resultSet.getInt(2)+" "+resultSet.getInt(3));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void ma(String[] args) {
        String[] strings = {"dailylayoutb","2","3","5","8","12","14"};
        CustomizedProduct product = CustomizeProductAddition.AddNewCustomizeProduct(strings);
        try{
            int customizedID = 100000001;
            ResultSet resultSet = connection.createStatement().executeQuery("SELECT max(customized_id) FROM customized;");
            if (resultSet.next()) {
                customizedID = resultSet.getInt(1) + 1;
            }

            String sql = "INSERT INTO customized (customized_id,uid,option1,option2,option3,option4,option5," +
                    "option6,option7,option8,option9,option10,option11,option12,option13,option14,layout) " +
                    "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1,customizedID);
            statement.setInt(2,5);
            if(product.isOption1()){
                statement.setInt(3,1);
            }else
                statement.setInt(3,0);
            if(product.isOption2()){
                statement.setInt(4,1);
            }else
                statement.setInt(4,0);
            if(product.isOption3()){
                statement.setInt(5,1);
            }else
                statement.setInt(5,0);
            if(product.isOption4()){
                statement.setInt(6,1);
            }else
                statement.setInt(6,0);
            if(product.isOption5()){
                statement.setInt(7,1);
            }else
                statement.setInt(7,0);
            if(product.isOption6()){
                statement.setInt(8,1);
            }else
                statement.setInt(8,0);
            if(product.isOption7()){
                statement.setInt(9,1);
            }else
                statement.setInt(9,0);
            if(product.isOption8()){
                statement.setInt(10,1);
            }else
                statement.setInt(10,0);
            if(product.isOption9()){
                statement.setInt(11,1);
            }else
                statement.setInt(11,0);
            if(product.isOption10()){
                statement.setInt(12,1);
            }else
                statement.setInt(12,0);
            if(product.isOption11()){
                statement.setInt(13,1);
            }else
                statement.setInt(13,0);
            if(product.isOption12()){
                statement.setInt(14,1);
            }else
                statement.setInt(14,0);
            if(product.isOption13()){
                statement.setInt(15,1);
            }else
                statement.setInt(15,0);
            if(product.isOption14()){
                statement.setInt(16,1);
            }else
                statement.setInt(16,0);
            statement.setString(17,product.getLayout());
            statement.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try{
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT MWE004 FROM bagTables WHERE bag_id = '5'");
            while (resultSet.next()){
                System.out.println("result"+resultSet.getString(1)+"X");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
