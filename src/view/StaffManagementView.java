package view;

import dto.Staff;

import java.util.ArrayList;
import java.util.Objects;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 13/10/17
 */

public class StaffManagementView {
    public static String getView(ArrayList<Staff> staffs) {
        String view = "";
        for (Staff staff : staffs) {
            view += "<tr>\n" +
                    "                <form>\n" +
                    "                <td>" + staff.getStuffID() + "</td>\n" +
                    "                <td>" + staff.getFirst_name() + "</td>\n" +
                    "                <td>" + staff.getPhoneNumber() + "</td>\n" +
                    "                <td>" + staff.getAdmin() + "</td>";
            if (!Objects.equals(staff.getAdmin(), "Admin")) {
                view += "<td><button class=\"w3-button\" style=\"width:10%\" formmethod=\"post\" formaction=\"RemoveStaff\" name=\"id\" value=\"" + staff.getStuffID() + "\">REMOVE</button></td>\n" +
                        "                </form>\n" +
                        "            </tr>";
            } else {
                view += "</form>\n" +
                        "            </tr>";
            }
        }
        return view;
    }
}
