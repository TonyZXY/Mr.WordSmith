package dto;

public class Product {
    private String productName;
    private String productID;
    private double price;
    private int stock;
    private double discount;
    private int reorderTime;
    private int reorderLimit;

    public Product() {

    }

    /**
     * This class is to create Data Transfer Object product.
     *
     * @param productID    String product ID
     * @param productName  String product Name
     * @param price        double product price
     * @param stock        int product stock level
     * @param discount     double product's discount
     * @param reorderLimit int when hit the limit, remind to reorder (will be used in Admin system)
     * @param reorderTime  int days need of reorder the product (will be used in Admin system)
     */
    public Product(String productID, String productName, double price, int stock, double discount, int reorderLimit, int reorderTime) {
        this.discount = discount;
        this.price = price;
        this.productID = productID;
        this.productName = productName;
        this.reorderLimit = reorderLimit;
        this.reorderTime = reorderTime;
        this.stock = stock;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public int getReorderTime() {
        return reorderTime;
    }

    public void setReorderTime(int reorderTime) {
        this.reorderTime = reorderTime;
    }

    public int getReorderLimit() {
        return reorderLimit;
    }

    public void setReorderLimit(int reorderLimit) {
        this.reorderLimit = reorderLimit;
    }
}
