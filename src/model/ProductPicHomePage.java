package model;

public class ProductPicHomePage {

    public static String getProducts(){
        String view = "";
        view += "<div class=\"w3-third w3-margin-bottom\">\n" +
                "            <ul class=\"w3-ul w3-border w3-center w3-hover-shadow\">\n" +
                "                <img src=\"images/Product 1 - Front.png\" alt=\"Norway\" style=\"width:100%\" class=\"w3-hover-opacity\">\n" +
                "                <div class=\"w3-container w3-white\">\n" +
                "                    <p><b>\n" +
                "                        <center>product 1</center>\n" +
                "                    </b></p>\n" +
                "                </div>\n" +
                "\n" +
                "            </ul>\n" +
                "        </div>";

        return view;
    }
}
