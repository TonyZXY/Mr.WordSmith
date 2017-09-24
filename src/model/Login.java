package model;


import database.DatabaseGetUser;
import dto.User;

import java.util.Objects;

public class Login {

    private static User user;

    /**
     * This method is to call database return User object by giving email
     * and check the userName and password of the user input
     * @param username email that user input
     * @param password password that user input
     * @return boolean that represent user login successful or not
     */
    public static boolean Authenticate(String username, String password) {
        user = DatabaseGetUser.getUser(username);
        System.out.println("user name got");
        System.out.println(user.getPassword());
        System.out.println(password);
        return Objects.equals(password, user.getPassword());
    }

    public static User getUser() {
        return user;
    }
}
