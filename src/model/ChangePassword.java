package model;

import database.DatabaseUser;
import dto.User;

import java.util.Objects;

public class ChangePassword {

    public static boolean changePassword(User user, String oldPassword, String newPassword) {
        boolean success = false;
        if (Objects.equals(user.getPassword(), oldPassword)) {
            user.setPassword(newPassword);
            DatabaseUser.changePassword(user);
            success = true;
        }
        return success;
    }
}
