package view;


public class SubViewHomePage {
    /**
     * This method use to generate the Subscript part in the home page
     * Call from index.jsp when no user logged in.
     *
     * @return String view
     */
    public static String view() {
        return "<div class=\"w3-bar-item\" style=\"max-width:100%;margin-top:15px\" align=\"center\">\n" +
                "    <div class=\"w3-row w3-large\">\n" +
                "        <center>\n" +
                "            <div class=\"w3-col \" style=\"width:50%\">\n" +
                "                <i><b><p></p></b></i>\n" +
                "            </div>\n" +
                "        </center>\n" +
                "        <form action=\"Sub\" method=\"post\">\n" +
                "            <div class=\"w3-col\" style=\"width:25%\">\n" +
                "                <input class=\"w3-input w3-border w3-round\" style=\"height: 80%\" name=\"email\" type=\"email\" pattern=\"[^ @]*@[^ @]*\"\n" +
                "                       placeholder=\"Email Address\">\n" +
                "            </div>\n" +
                "            <div class=\"w3-col\" style=\"width:10%\">\n" +
                "                <center>\n" +
                "                    <button class=\"w3-btn w3-black\" type=\"submit\">Subscribe</button>\n" +
                "                </center>\n" +
                "            </div>\n" +
                "        </form>\n" +
                "        <br><br>\n" +
                "        <b><i><p style=\"font-family:Times\" align=\"center\">- Get a 15%-off on the 1st order by joining our mailing list!\n" +
                "            - </p></i></b>\n" +
                "\n" +
                "    </div>\n" +
                "</div>";
    }
}
