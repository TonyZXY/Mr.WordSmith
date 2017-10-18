package dto;


/**
 * Item means the product with quantity
 * and Item object designs to be used in Order and Bag function
 */
public class Item {
    private Product product;
    private int number;

    public Item() {
    }

    public Item(Product product, int number) {
        this.product = product;
        this.number = number;
    }

    public Product getProduct() {

        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }
}
