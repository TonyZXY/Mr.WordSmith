package database;

import dto.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

public class DatabaseUpdateCustomizeProductBag {
    private static Connection connection = DatabaseConnection.getInstence().getConnection();

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
}
