package model;

import database.DatabaseStaff;
import dto.Staff;

import java.util.Objects;

public class StaffsFunc {

    private static Staff staff = null;

    public static boolean login(String id,String password){
        staff = DatabaseStaff.getStuff(id);
        return Objects.equals(password, staff.getPassword());
    }

    public static Staff getStaff() {
        return staff;
    }
}
