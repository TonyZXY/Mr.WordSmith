package model;

import database.DatabaseProduct;
import dto.CustomizedProduct;
import dto.User;

public class CustomizeProductAddition {
    public static CustomizedProduct AddNewCustomizeProduct(String[] strings){
        CustomizedProduct product = new CustomizedProduct();
        for (String s: strings) {
            switch (s){
                case "weeklylayouta":
                case "weeklylayoutb":
                case "weeklylayoutc":
                case "weeklylayoutd":
                case "dailylayouta":
                case "dailylayoutb":
                    product.setLayout(s);
                    break;
                case "1":
                    product.setOption1(true);
                    break;
                case "2":
                    product.setOption2(true);
                    break;
                case "3":
                    product.setOption3(true);
                    break;
                case "4":
                    product.setOption4(true);
                    break;
                case "5":
                    product.setOption5(true);
                    break;
                case "6":
                    product.setOption6(true);
                    break;
                case "7":
                    product.setOption7(true);
                    break;
                case "8":
                    product.setOption8(true);
                    break;
                case "9":
                    product.setOption9(true);
                    break;
                case "10":
                    product.setOption10(true);
                    break;
                case "11":
                    product.setOption11(true);
                    break;
                case "12":
                    product.setOption12(true);
                    break;
                case "13":
                    product.setOption13(true);
                    break;
                case "14":
                    product.setOption14(true);
                    break;
            }
        }
        return product;
    }

    public static void customizeAdd(User user,String[] string){
        CustomizedProduct customizedProduct = AddNewCustomizeProduct(string);

        DatabaseProduct.AddCustomizeProductToBag(user,customizedProduct);
    }
}
