package dto;

import java.sql.Date;
import java.util.ArrayList;

public class Order {
    private int orderID; //
    private ArrayList<Item> orderList = new ArrayList<>(); //
    private String payment; //
    private double discount; //
    private String shippingTime;  //null
    private String shippingAddress; //
    private Date Time; //
    private String contactNumber;  //
    private String firstName;  //
    private String lastName;  //
    private String postCode;  //

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

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

    public Date getTime() {
        return Time;
    }

    public void setTime(Date time) {
        Time = time;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public Order(int orderID, ArrayList<Item> orderList, String payment, double discount, String shippingTime, String shippingAddress, Date time, String contactNumber) {
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
