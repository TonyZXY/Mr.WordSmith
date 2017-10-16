package view;

import database.DatabaseProduct;
import dto.Product;

import java.util.ArrayList;
import java.util.Objects;

public class ProductPicProductListPage {

    /**
     * This method used to generate product List view in ProductList.jsp
     * call from ProductList.jsp
     * getting data from Database
     *
     * @return String view
     */
    public static String getProductView() {
        String view = "";
        ArrayList<Product> products = DatabaseProduct.getProductList();

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
            } else {
                view += "<div class=\"w3-col w3-container w3-margin-bottom\" style=\"width: 22.5%\">\n" +
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

    public static String getProducts(){
        String view = "";
        ArrayList<Product> products = DatabaseProduct.getProductList();

        for (Product p:products){
            if(!Objects.equals(p.getProductID(),"MWE004")){
                view += "<div class=\"w3-third w3-margin-bottom\">\n" +
                        "            <a href=\"ProductDetail.jsp?pid=" +p.getProductID() +"\">\n" +
                        "                <ul class=\"w3-ul w3-center w3-hover-shadow\">\n" +
                        "                    <img src=\""+p.getProductImg1()+"\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                        "                    <div class=\"w3-container w3-white\">\n" +
                        "                        <p><b>\n" +
                        "                            <center>"+p.getProductName()+"</center>\n" +
                        "                        </b></p>\n" +
                        "                <center><p>$ " + p.getPrice() + "</p></center>\n" +
                        "                    </div>\n" +
                        "\n" +
                        "                </ul>\n" +
                        "            </a>\n" +
                        "        </div>";
            } else {
                view += "<div class=\"w3-third w3-margin-bottom\">\n" +
                        "            <a href=\"CustomizeProduct.jsp?pid=MWE004\">\n" +
                        "                <ul class=\"w3-ul w3-center w3-hover-shadow\">\n" +
                        "                    <img src=\""+p.getProductImg1()+"\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                        "                    <div class=\"w3-container w3-white\">\n" +
                        "                        <p><b>\n" +
                        "                            <center>"+p.getProductName()+"</center>\n" +
                        "                        </b></p>\n" +
                        "                <center><p>$ " + p.getPrice() + "</p></center>\n" +
                        "                    </div>\n" +
                        "\n" +
                        "                </ul>\n" +
                        "            </a>\n" +
                        "        </div>";
            }
        }
        return view;
    }

}
