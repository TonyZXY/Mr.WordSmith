package view;

import database.DatabaseGetProduct;
import dto.Product;

import java.util.ArrayList;
import java.util.HashMap;

public class ProductPicHomePage {

    public static String getProducts() {
        String view = "";
        ArrayList<Product> products = DatabaseGetProduct.getProductList();


        for (Product p : products) {

            view += "<div class=\"w3-third w3-margin-bottom\">\n" +
                    "            <a href=\"ProductDetail.jsp?pid=" +p.getProductID() +"\">\n" +
                    "                <ul class=\"w3-ul w3-border w3-center w3-hover-shadow\">\n" +
                    "                    <img src=\""+p.getProductImg1()+"\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                    "                    <div class=\"w3-container w3-white\">\n" +
                    "                        <p><b>\n" +
                    "                            <center>"+p.getProductName()+"</center>\n" +
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
