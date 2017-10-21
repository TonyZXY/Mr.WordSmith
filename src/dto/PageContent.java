package dto;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 21/10/17
 */

public class PageContent {
    private String name;
    private String content;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public PageContent(String content) {
        this.content = content;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public PageContent(String name, String content) {
        this.name = name;
        this.content = content;
    }

    private static String label(String name){
        String lable = "";
        switch (name){
            case "payment":
                lable = "What types of payment do you accept?";
                break;
            case "shipinternational":
                lable = "Do you ship internationally?";
                break;
            case "promotecode":
                lable = "Can I use multiple promo codes?";
                break;
            case "orderarrival":
                lable ="How long will my order take to arrive?";
                break;
            case "trackparcel":
                lable = "How can I track my parcel?";
                break;
            case "ifdamage":
                lable = "Help, the item I received is damaged or faulty!";
                break;
            case "ifreturn":
                lable = "How do I return an item?";
                break;
            case "pilicy":
                lable = "Privacy Policy";
                break;
            case "personalinfo":
                lable ="What is Personal Information and why do we collect it?";
                break;
            case "sensitiveinfo":
                lable = "Sensitive Information";
                break;
            case "thirdparties":
                lable = "Third Parties";
                break;
            case "securityinfo":
                lable = "Security of Personal Information";
                break;
            case "accessinfo":
                lable = "Access to your Personal Information";
                break;
            case "policyenquiries":
                lable = "Privacy Policy Complaints and Enquiries";
                break;
            case "branding":
                lable = "Branding";
                break;
            case "design":
                lable = "Graphic design";
                break;
        }
        return lable;
    }
}
