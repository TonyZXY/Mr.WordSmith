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
    public static String getView(ArrayList<Product> products){
        String view = "";
        for (Product product: products) {
            view += "<tr>\n" +
                    "<form>\n"+
                    "                <td>"+product.getProductID()+"</td>\n" +
                    "                <td>"+product.getProductName()+"</td>\n" +
                    "                <td>"+product.getStock()+"</td>\n" +
                    "                <td><input class=\"w3-input w3-border\" type=\"number\" style=\"width: auto\" name=\"number\"></td>\n" +
                    "                <td><button formaction=\"UpdateStockLevel\" formmethod=\"post\" type=\"submit\" class=\"w3-btn w3-black\" value=\""+product.getProductID()+"\" name=\"Update\">Update</button></td>\n" +
                    "</form>\n"+
                    "            </tr>";
        }
        return view;
    }
}
