package database;

import dto.PageContent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 21/10/17
 */

public class DatabasePageContent {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

    private static final String[] strings = {"branding","design","payment","shipinternational","promotecode",
            "orderarrival","trackparcel","ifdamage","ifreturn","pilicy","personalinfo","sensitiveinfo","thirdparties",
            "securityinfo","accessinfo","policyenquiries"};

    public static String getContent(String name){
        String content = "";
        try{
            String sql = "SELECT content FROM Content WHERE name ='"+name+"';";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                content=resultSet.getString(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return content;
    }

    public static ArrayList<PageContent> getContents(){
        ArrayList<PageContent> contents = new ArrayList<>();
        for (String s:strings) {
            contents.add(new PageContent(s,getContent(s)));
        }
        return contents;
    }

    public static void updateContent(HashMap<String,PageContent> contents){
        for(PageContent content:contents.values()){
            try{
                String sql1 = "UPDATE Content SET content = ? WHERE name= ?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql1);
                preparedStatement.setString(1,content.getContent());
                preparedStatement.setString(2,content.getName());
                preparedStatement.executeUpdate();
//                String sql = "UPDATE Content SET content = '"+content.getContent()+"' WHERE name = '"+content.getName()+"';";
//                Statement statement = connection.createStatement();
//                statement.executeUpdate(sql);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
