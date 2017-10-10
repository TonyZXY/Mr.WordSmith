package dto;

import java.util.ArrayList;
import java.util.StringTokenizer;

public class CustomizedProduct {
    public static int getNumberFromIDs(String string) {
        StringTokenizer st = new StringTokenizer(string, ",");
        ArrayList<String> customizedID = new ArrayList<>();
        while (st.hasMoreTokens()) {
            customizedID.add(st.nextToken());
            System.out.println(customizedID.size());
        }
        return customizedID.size();
    }

    private String customizeID;
    private String orderID;
    private String userID;
    private String layout;
    private boolean isOption1 = false;
    private boolean isOption2 = false;
    private boolean isOption3 = false;
    private boolean isOption4 = false;
    private boolean isOption5 = false;
    private boolean isOption6 = false;
    private boolean isOption7 = false;
    private boolean isOption8 = false;
    private boolean isOption9 = false;
    private boolean isOption10 = false;
    private boolean isOption11 = false;
    private boolean isOption12 = false;
    private boolean isOption13 = false;

    public boolean isOption14() {
        return isOption14;
    }

    public void setOption14(boolean option14) {
        isOption14 = option14;
    }

    private boolean isOption14 = false;

    public CustomizedProduct(String customizeID, String layout, boolean isOption1, boolean isOption2, boolean isOption3, boolean isOption4, boolean isOption5, boolean isOption6, boolean isOption7, boolean isOption8, boolean isOption9, boolean isOption10, boolean isOption11, boolean isOption12, boolean isOption13, boolean isOption14) {
        this.customizeID = customizeID;
        this.layout = layout;
        this.isOption1 = isOption1;
        this.isOption2 = isOption2;
        this.isOption3 = isOption3;
        this.isOption4 = isOption4;
        this.isOption5 = isOption5;
        this.isOption6 = isOption6;
        this.isOption7 = isOption7;
        this.isOption8 = isOption8;
        this.isOption9 = isOption9;
        this.isOption10 = isOption10;
        this.isOption11 = isOption11;
        this.isOption12 = isOption12;
        this.isOption13 = isOption13;
        this.isOption14 = isOption14;
    }

    public CustomizedProduct() {
    }

    public String getCustomizeID() {
        return customizeID;
    }

    public void setCustomizeID(String customizeID) {
        this.customizeID = customizeID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getLayout() {
        return layout;
    }

    public void setLayout(String layout) {
        this.layout = layout;
    }

    public boolean isOption1() {
        return isOption1;
    }

    public void setOption1(boolean option1) {
        isOption1 = option1;
    }

    public boolean isOption2() {
        return isOption2;
    }

    public void setOption2(boolean option2) {
        isOption2 = option2;
    }

    public boolean isOption3() {
        return isOption3;
    }

    public void setOption3(boolean option3) {
        isOption3 = option3;
    }

    public boolean isOption4() {
        return isOption4;
    }

    public void setOption4(boolean option4) {
        isOption4 = option4;
    }

    public boolean isOption5() {
        return isOption5;
    }

    public void setOption5(boolean option5) {
        isOption5 = option5;
    }

    public boolean isOption6() {
        return isOption6;
    }

    public void setOption6(boolean option6) {
        isOption6 = option6;
    }

    public boolean isOption7() {
        return isOption7;
    }

    public void setOption7(boolean option7) {
        isOption7 = option7;
    }

    public boolean isOption8() {
        return isOption8;
    }

    public void setOption8(boolean option8) {
        isOption8 = option8;
    }

    public boolean isOption9() {
        return isOption9;
    }

    public void setOption9(boolean option9) {
        isOption9 = option9;
    }

    public boolean isOption10() {
        return isOption10;
    }

    public void setOption10(boolean option10) {
        isOption10 = option10;
    }

    public boolean isOption11() {
        return isOption11;
    }

    public void setOption11(boolean option11) {
        isOption11 = option11;
    }

    public boolean isOption12() {
        return isOption12;
    }

    public void setOption12(boolean option12) {
        isOption12 = option12;
    }

    public boolean isOption13() {
        return isOption13;
    }

    public void setOption13(boolean option13) {
        isOption13 = option13;
    }
}
