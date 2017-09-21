package dto;

import java.util.Date;

public class User {
    private String firstName;
    private String lastName;
    private String userID;
    private String email;
    private String address;
    private Date birthday;
    private String phone;
    private boolean subs;
    private String password;

    /**
     * This class is an Data Transfer Object that transfer the User detail in the application.
     * @param firstName String user's first name
     * @param lastName String user's last name
     * @param userID String user's ID number (will be generate by system)
     * @param email String user's email address
     * @param address String user's address
     * @param birthday Date user's birthday
     * @param phone String user's phone number
     * @param subs boolean user's subscription info
     * @param password String user's password
     */
    public User(String firstName, String lastName, String userID, String email, String address, Date birthday, String phone, boolean subs, String password) {
        this.address = address;
        this.birthday = birthday;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phone = phone;
        this.subs = subs;
        this.userID = userID;
        this.password = password;
    }

    /**
     * Override constructor method.
     * generate a User object with no info.
     */
    public User(){
    }


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

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isSubs() {
        return subs;
    }

    public void setSubs(boolean subs) {
        this.subs = subs;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
