package model;

import database.DatabaseProduct;
import database.DatabaseStaff;
import dto.Product;
import dto.Staff;

import java.sql.Date;
import java.util.HashMap;
import java.util.Objects;

public class StaffsFunc {

    private static Staff staff = null;

    public static boolean login(String id, String password) {
        staff = DatabaseStaff.getStuff(id);
        return Objects.equals(password, staff.getPassword());
    }

    public static Staff getStaff() {
        return staff;
    }


    public static HashMap getSalesReport(Date start, Date end) {
        HashMap<Product, Integer> report = DatabaseStaff.getSalesReport(start, end);
        System.out.println("model sent");
        return report;
    }

    public static void UpdateStockLevel(String pid, int num) {
        DatabaseProduct.updateStockLevel(pid, num);
    }
}
