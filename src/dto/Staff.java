package dto;

public class Staff {
    private String staffID;
    private String password;
    private String email;
    private String address;
    private String first_name;
    private String last_name;
    private String phoneNumber;
    private String admin;

    public Staff() {
    }

    public Staff(String staffID, String password, String email, String address, String first_name, String last_name, String phoneNumber, String admin) {
        this.staffID = staffID;
        this.password = password;
        this.email = email;
        this.address = address;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phoneNumber = phoneNumber;
        this.admin = admin;
    }

    public String getStuffID() {
        return staffID;
    }

    public void setStuffID(String stuffID) {
        this.staffID = stuffID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }
}
