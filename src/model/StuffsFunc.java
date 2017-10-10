package model;

import database.DatabaseStuff;
import dto.Stuff;

import java.util.Objects;

public class StuffsFunc {

    private static Stuff stuff = null;

    public static boolean login(String id,String password){
        stuff = DatabaseStuff.getStuff(id);
        return Objects.equals(password,stuff.getPassword());
    }

    public static Stuff getStuff() {
        return stuff;
    }
}
