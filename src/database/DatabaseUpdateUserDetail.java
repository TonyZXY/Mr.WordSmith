package database;

import dto.User;

import java.sql.Connection;
import java.sql.Statement;

public class DatabaseUpdateUserDetail {
    public static void updateUserDetail(User user) {
        try {
            String UserID = user.getUserID();
            String FN = user.getFirstName();
            String LN = user.getLastName();
            String DoB = user.getBirthday();
            String Email = user.getEmail();
            String Phone = user.getPhone();
            String Address = user.getAddress();

            String sql = "UPDATE Users SET first_name ='"+FN+"', last_name ='"+LN+"', birthday ='"+DoB+"', address ='"+Address+"', phone ='"+Phone+"' WHERE user_id ='"+UserID+"';";
            Connection connection = DatabaseConnection.getInstence().getConnection();
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
