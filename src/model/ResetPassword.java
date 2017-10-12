package model;

import database.DatabaseUser;
import dto.User;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 12/10/17
 */

public class ResetPassword {
    public static void resetPassword(String email){
        User user = DatabaseUser.getUser(email);

        System.out.println(user.getPassword());
    }
}
