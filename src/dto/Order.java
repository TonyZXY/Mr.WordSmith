package dto;

import java.util.ArrayList;

public class Order {
    private int orderID;
    private ArrayList<Item> orderList;
    private String payment;
    private double discount;
    private String shippingTime;
    private String shippingAddress;
    private String Time;
    private String contactNumber;

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getShippingTime() {
        return shippingTime;
    }

    public void setShippingTime(String shippingTime) {
        this.shippingTime = shippingTime;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public Order(int orderID, ArrayList<Item> orderList, String payment, double discount, String shippingTime, String shippingAddress, String time, String contactNumber) {
        this.orderID = orderID;
        this.orderList = orderList;
        this.payment = payment;
        this.discount = discount;
        this.shippingTime = shippingTime;
        this.shippingAddress = shippingAddress;
        Time = time;
        this.contactNumber = contactNumber;

    }

    public Order(){

    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public ArrayList<Item> getOrderList() {
        return orderList;
    }

    public void setOrderList(ArrayList<Item> orderList) {
        this.orderList = orderList;
    }
}
