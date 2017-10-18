package view;

import database.DatabaseProduct;
import dto.Product;

import java.util.ArrayList;

public class ProductPicHomePage {

    public static String getProducts() {
        String view = "";
        ArrayList<Product> products = DatabaseProduct.getProductList();


        for (int i = 0; i < 3; i++) {

            view += "<div class=\"w3-third w3-margin-bottom\">\n" +
                    "            <a href=\"ProductDetail.jsp?pid=" + products.get(i).getProductID() + "\">\n" +
                    "                <ul class=\"w3-ul w3-center w3-hover-shadow\">\n" +
                    "                    <img src=\"" + products.get(i).getProductImg1() + "\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                    "                    <div class=\"w3-container w3-white\">\n" +
                    "                        <p><b>\n" +
                    "                            <center>" + products.get(i).getProductName() + "</center>\n" +
                    "                        </b></p>\n" +
                    "                    </div>\n" +
                    "\n" +
                    "                </ul>\n" +
                    "            </a>\n" +
                    "        </div>";
        }
        return view;
    }
}
