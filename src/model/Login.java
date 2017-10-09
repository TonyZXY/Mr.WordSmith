package model;


import database.DatabaseUser;
import dto.User;

import java.util.Objects;

public class Login {

    private static User user;

    /**
     * This method is to call database return User object by giving email
     * and check the userName and password of the user input
     *
     * @param username email that user input
     * @param password password that user input
     * @return boolean that represent user login successful or not
     */
    public static boolean Authenticate(String username, String password) {
        user = DatabaseUser.getUser(username);
        return Objects.equals(password, user.getPassword());
    }

    public static User getUser() {
        return user;
    }
}
