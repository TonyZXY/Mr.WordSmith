package view;

import java.util.Objects;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 17/10/17
 */

public class PreviewView {
    public static String view(String[] layout) {
        String view = "";
        String lay = "";
        boolean opt = false;
        boolean password = false;
        boolean note = false;
        boolean social = false;
        boolean info = false;
        boolean todo = false;
        for (String s : layout) {
            switch (s) {
                case "weeklylayouta":
                case "weeklylayoutb":
                case "weeklylayoutc":
                case "weeklylayoutd":
                case "dailylayouta":
                case "dailylayoutb":
                    lay = s;
                    break;
                case "1":
                    opt = false;
                    break;
                case "2":
                    opt = true;
                    break;
                case "3":
                    opt = true;
                    break;
                case "4":
                    opt = true;
                    break;
                case "5":
                    opt = true;
                    break;
                case "6":
                    opt = true;
                    break;
                case "7":
                    opt = true;
                    break;
                case "8":
                    password = true;
                    break;
                case "9":
                    note = true;
                    break;
                case "10":
                    social = true;
                    break;
                case "11":
                    info = true;
                    break;
                case "12":
                    todo = true;
                    break;
            }
        }

        if (Objects.equals(lay, "weeklylayouta") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayouta.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayouta") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayouta1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "dailylayouta") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/dailylayouta.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "dailylayouta") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/dailylayouta1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "dailylayoutb") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/dailylayoutb.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "dailylayoutb") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/dailylayoutb1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutb") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutb.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutb") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutb1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutc") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutc.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutc") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutc1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutd") && !opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutd.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (Objects.equals(lay, "weeklylayoutd") && opt) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/weeklylayoutd1234567.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (password) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/8Password Pages.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (note) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/9Notes Pages.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (social) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/10Social Media Pages.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (info) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/11Personal Info Pages.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        if (todo) {
            view += "<div class=\"w3-display-container mySlides\">\n" +
                    "        <img src=\"images/12To Do List Pages.jpg\" style=\"width:100%\">\n" +
                    "\n" +
                    "    </div>";
        }
        return view;
    }
}
