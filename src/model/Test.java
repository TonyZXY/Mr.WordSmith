package model;

import dto.CustomizedProduct;

public class Test {
    public static void main(String[] args) {
        String[] strings = {"dailylayoutb", "2", "3", "5", "8", "12", "14"};
        CustomizedProduct product = CustomizeProductAddition.AddNewCustomizeProduct(strings);

        System.out.println(product.getLayout() + " " + product.isOption1() + " " + product.isOption2() + " " +
                product.isOption3() + " " + product.isOption4() + " " + product.isOption5() + " " + product.isOption6() + " " +
                product.isOption7() + " " + product.isOption8() + " " + product.isOption9() + " " + product.isOption10() + " " +
                product.isOption11() + " " + product.isOption12() + " " + product.isOption13() + " " + product.isOption14());
    }
}
