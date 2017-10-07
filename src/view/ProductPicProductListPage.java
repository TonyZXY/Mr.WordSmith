package view;

import database.DatabaseGetProduct;
import dto.Product;

import java.util.ArrayList;
import java.util.Objects;

public class ProductPicProductListPage {

    public static String getProductView() {
        String view = "";
        ArrayList<Product> products = DatabaseGetProduct.getProductList();

        for (Product p : products) {
            if (!Objects.equals(p.getProductID(), "MWE004")) {
                view += "<div class=\"w3-col w3-container w3-margin-bottom\" style=\"width: 22.5%\">\n" +
                        "            <a href=\"ProductDetail.jsp?pid=" + p.getProductID() + "\">\n" +
                        "            <img src=\"" + p.getProductImg1() + "\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                        "            <div class=\"w3-container w3-white\">\n" +
                        "                <p><b><center>" + p.getProductName() + "</center></b></p>\n" +
                        "                <center><p>$ " + p.getPrice() + "</p></center>\n" +
                        "            </div>\n" +
                        "            </a>\n" +
                        "        </div>";
            }else {
                view+="<div class=\"w3-col w3-container w3-margin-bottom\" style=\"width: 22.5%\">\n" +
                        "            <a href=\"CustomizeProduct.jsp?pid=MWE004\">\n" +
                        "            <img src=\"" + p.getProductImg1() + "\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                        "            <div class=\"w3-container w3-white\">\n" +
                        "                <p><b><center>" + p.getProductName() + "</center></b></p>\n" +
                        "                <center><p>$ " + p.getPrice() + "</p></center>\n" +
                        "            </div>\n" +
                        "            </a>\n" +
                        "        </div>";
            }
        }
        return view;
    }

}
