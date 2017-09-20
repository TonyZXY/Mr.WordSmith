package model;


import database.DatabaseGetUser;
import dto.User;

import java.util.Objects;

public class Login {

    public static User getUser() {
        return user;
    }

    private static User user;

    public static boolean Authenticate(String username, String password) {
        user = DatabaseGetUser.getUser(username);
        return Objects.equals(password, user.getPassword());
    }


}
