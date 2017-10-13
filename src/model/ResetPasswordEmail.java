package model;

import dto.User;

import java.util.Properties;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 13/10/17
 */

public class ResetPasswordEmail {
    public static void sendResetEmail(User user){
        String to = user.getEmail();
        String from = "resetpassword@mrwordsmith.com";
        String host = "localhost";
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host",host);

    }
}
