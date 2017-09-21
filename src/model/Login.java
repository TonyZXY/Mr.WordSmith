package model;


import database.DatabaseGetUser;
import dto.User;

import java.util.Objects;

public class Login {

    private static User user;

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
