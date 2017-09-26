package dto;

public class Product {
    private String productName;
    private String productID;
    private double price;
    private int stock;
    private double discount;
    private int reorderTime;
    private int reorderLimit;
    private String productImg1;
    private String productImg2;
    private String productImg3;
    private String productImg4;
    private String productImg5;

    public Product() {

    }

    public String getProductImg1() {
        return productImg1;
    }

    public void setProductImg1(String productImg1) {
        this.productImg1 = productImg1;
    }

    public String getProductImg2() {
        return productImg2;
    }

    public void setProductImg2(String productImg2) {
        this.productImg2 = productImg2;
    }

    public String getProductImg3() {
        return productImg3;
    }

    public void setProductImg3(String productImg3) {
        this.productImg3 = productImg3;
    }

    public String getProductImg4() {
        return productImg4;
    }

    public void setProductImg4(String productImg4) {
        this.productImg4 = productImg4;
    }

    public String getProductImg5() {
        return productImg5;
    }

    public void setProductImg5(String productImg5) {
        this.productImg5 = productImg5;
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
    public Product(String productID, String productName, double price, int stock, double discount, int reorderLimit, int reorderTime, String proImg1, String proImg2, String proImg3, String proImg4, String proImg5) {
        this.discount = discount;
        this.price = price;
        this.productID = productID;
        this.productName = productName;
        this.reorderLimit = reorderLimit;
        this.reorderTime = reorderTime;
        this.stock = stock;
        this.productImg1 = proImg1;
        this.productImg2 = proImg2;
        this.productImg3 = proImg3;
        this.productImg4 = proImg4;
        this.productImg5 = proImg5;

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
