package model;

import database.DatabaseUser;
import dto.User;

public class Register {

    /**
     * This method is to call database check input email is in database or not
     * if yes, return false, if no, call database insert new User information
     *  
     * @param user DTO Object User
     * @return boolean that user info is in or not in the database
     */
    public static boolean RegisterCheck(User user) {
        User userDB = DatabaseUser.getUser(user.getEmail());
        if (userDB.getEmail() == null) {
            DatabaseUser.insertUser(user);
            return true;
        } else return false;

    }
}
