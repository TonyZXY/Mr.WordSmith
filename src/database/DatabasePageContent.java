package database;

import dto.PageContent;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

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
}
