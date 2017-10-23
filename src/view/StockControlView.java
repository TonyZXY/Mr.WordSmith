package view;

import dto.Product;

import java.util.ArrayList;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 13/10/17
 */

public class StockControlView {
    public static String getView(ArrayList<Product> products) {
        String view = "";
        for (Product product : products) {
            view += "<tr>\n" +
                    "<form>\n" +
                    "                <td style=\"width:20%\">" + product.getProductID() + "</td>\n" +
                    "                <td style=\"width:20%\">" + product.getProductName() + "</td>\n" +
                    "                <td style=\"width:20%\">" + product.getStock() + "</td>\n" +
                    "                <td><input class=\"w3-input w3-border\" type=\"number\" style=\"width:50%\" name=\"number\"></td>\n" +
                    "                <td><button formaction=\"UpdateStockLevel\" formmethod=\"post\" type=\"submit\" class=\"w3-button\" value=\"" + product.getProductID() + "\" name=\"Update\">Update</button></td>\n" +
                    "</form>\n" +
                    "            </tr>";
        }
        return view;
    }
}
