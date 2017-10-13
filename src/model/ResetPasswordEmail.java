package model;

import dto.User;


import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
        Session session = Session.getDefaultInstance(properties);
        try{
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO ,new InternetAddress(to));
            message.setSubject("This is Subject");
            message.setText("This is text, and password = "+user.getPassword());

            Transport.send(message);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
