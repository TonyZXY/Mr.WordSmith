package model;

import database.DatabaseGetUser;
import database.DatabaseInsertUser;
import dto.User;

public class Register {

    public static boolean RegisterCheck(User user){
        User userDB = DatabaseGetUser.getUser(user.getEmail());
        if(userDB.getEmail()==null){
            DatabaseInsertUser.insertUser(user);
            return true;
        }else return false;

    }
}
