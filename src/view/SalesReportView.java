package view;

import dto.Product;

import java.util.HashMap;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 12/10/17
 */

public class SalesReportView {
    public static String getview(HashMap<Product, Integer> salesReport) {
        String view = "";
        for (Product p : salesReport.keySet()) {
            view += "<tr>\n" +
                    "                    <td>" + p.getProductID() + "</td>\n" +
                    "                    <td>" + p.getProductName() + "</td>\n" +
                    "                    <td>" + salesReport.get(p) + "</td>\n" +
                    "                </tr>";
        }
        System.out.println("View sent");
        return view;
    }
}
