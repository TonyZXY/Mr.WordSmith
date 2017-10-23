package view;

import database.DatabaseBagItems;
import dto.Item;
import dto.User;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Objects;

public class BagProductView {

    public static String getView(User user){
        ArrayList<Item> items = DatabaseBagItems.getBag(user.getUserID());
        String view = getBagView(items);
        return view;
    }

    public static String getBagView(ArrayList<Item> items) {
        DecimalFormat df = new DecimalFormat("0.00");
        String view = "<form name=\"Update\" method=\"post\">\n" +
                "                <table cellspacing=\"5\" cellpadding=\"5\" align=\"center\"><br>\n" +
                "                    <tr>\n" +
                "                        <th> Product</th>\n" +
                "                        <th>Description</th>\n" +
                "                        <th> Price</th>\n" +
                "                        <th> Quantity</th>\n" +
                "                        <th> Subtotal</th>\n" +
                "                    </tr>\n" +
                "                    <tr></tr>";
        int product = 0;
        int totalNumber = 0;
        double totalPrice = 0;
        for (Item i : items) {
            if (i.getNumber() == 0) {
                view += "";
            } else if (!Objects.equals(i.getProduct().getProductID(), "MWE004")) {
                totalNumber += i.getNumber();
                view += "<tr height=\"45%\">\n" +
                        "                        <td width=\"25%\" align=\"center\"><img\n" +
                        "                                src=\"" + i.getProduct().getProductImg1() + "\"\n" +
                        "                                width=\"65%\"></td>\n" +
                        "                        <td style=\"font-size: small\" width=\"25%\" align=\"left\">\n" +
                        "                            Name:" + i.getProduct().getProductName() + "<input type=\"hidden\" name=\"Prod1name\"\n" +
                        "                                                                                     id=\"Prod1name\"\n" +
                        "                                                                                     value=\"Prod1name\"/><br>\n" +
                        "                            Product code:" + i.getProduct().getProductID() + "<input type=\"hidden\"\n" +
                        "                                                                                           name=\"Prod1name\"\n" +
                        "                                                                                           id=\"Prod1code\"\n" +
                        "                                                                                           value=\"Prod1code\"/><br>\n" +
                        "                        <td width=\"15%\" align=\"center\" style=\"font-size: small\">$ " + i.getProduct().getPrice() + "<input style=\"font-size: small\"\n" +
                        "                                                                                         type=\"hidden\" name=\"Prod1Price\"\n" +
                        "                                                                                         id=\"Prod1Price\" value=\"10\"/>\n" +
                        "                        </td>\n" +
                        "                        <td width=\"15%\" align=\"center\"><input style=\"font-size: small\" id=\"Prod1Qty\" name=\"" + i.getProduct().getProductID() + "\"\n" +
                        "                                                              type=\"number\" value=\"" + i.getNumber() + "\" min=\"0\" max=\"10\"\n" +
                        "                                                              /></td>\n" +
                        "                        <td width=\"15%\" align=\"center\"><p id=\"Prod1SubTol\" style=\"font-size: small\">$ " + df.format((i.getNumber()) * (i.getProduct().getPrice())) + "</p><input\n" +
                        "                                id=\"Prod1Tol\" name=\"Prod1Tol\" type=\"hidden\" value=\"0\"/></td>\n" +
                        "                        <td width=\"10%\"><input type=\"hidden\" name=\"productID\" value=" + i.getProduct().getProductID() + "><button class=\"w3-button\" formaction=\"RemoveBagItem\" formmethod=\"post\" style=\"font-size: small\" type=\"submit\">REMOVE</button></form></td>\n" +
                        "                    </tr>";
                totalPrice += ((i.getNumber()) * (i.getProduct().getPrice()));
                product += 1;
            } else {
                totalNumber += 1;
                totalPrice += i.getProduct().getPrice();
                view += "<tr height=\"45%\">\n" +
                        "    <td width=\"25%\" align=\"center\"><img\n" +
                        "            src=\"" + i.getProduct().getProductImg1() + "\"\n" +
                        "            width=\"65%\"></td>\n" +
                        "    <td style=\"font-size: small\" width=\"25%\" align=\"left\">\n" +
                        "        Name:" + i.getProduct().getProductName() + "<input type=\"hidden\" name=\"Prod1name\"\n" +
                        "                                id=\"Prod1name\"\n" +
                        "                                value=\"Prod1name\"/><br>\n" +
                        "        Product code:" + i.getProduct().getProductID() + "<input type=\"hidden\"\n" +
                        "                                  name=\"Prod1name\"\n" +
                        "                                  id=\"Prod1code\"\n" +
                        "                                  value=\"Prod1code\"/><br>\n" +
                        "        Customize ID: " + i.getProduct().getCustomizeID() + "\n" +
                        "\n" +
                        "    <td width=\"15%\" align=\"center\" style=\"font-size: small\">$ " + i.getProduct().getPrice() + "<input style=\"font-size: small\"\n" +
                        "                                                                          type=\"hidden\" name=\"Prod1Price\"\n" +
                        "                                                                          id=\"Prod1Price\" value=\"10\"/>\n" +
                        "    </td>\n" +
                        "    <td width=\"15%\" align=\"center\">1</td>\n" +
                        "    <td width=\"15%\" align=\"center\"><p id=\"Prod1SubTol\" style=\"font-size: small\">$ " + i.getProduct().getPrice() + "</p><input\n" +
                        "            id=\"Prod1Tol\" name=\"Prod1Tol\" type=\"hidden\" value=\"0\"/></td>\n" +
                        "    <td width=\"10%\"><form><input type=\"hidden\" name=\"customizedID\" value=" + i.getProduct().getCustomizeID() + "><button class=\"w3-button\" formaction=\"RemoveCustomizedBagItem\" formmethod=\"post\" style=\"font-size: small\" type=\"submit\">REMOVE</button></form></td>\n" +
                        "</tr>";
                product += 1;
            }
        }

        view += "<tr>\n" +
                "                        <th></th>\n" +
                "                        <th></th>\n" +
                "                        <th>Total</th>\n" +
                "                        <th><p id=\"Qty\">" + totalNumber + "</p><input id=\"TolQty\" name=\"Tol\" type=\"hidden\" value=\"0\"/></th>\n" +
                "                        <th><p id=\"Price\">$ " + df.format(totalPrice) + "</p><input id=\"TolPrice\" name=\"TolPrice\" type=\"hidden\" value=\"0\"/></th>\n" +
                "                    </tr>";

        view += "<tr>\n" +
                "                        <td></td>\n" +
                "                        <td></td>\n" +
                "                        <td></td>\n" +
                "                        <td></td>\n";
        if (product != 0) {
            view += "                        <td>\n" +
                    "                            <button align=\"right\" class=\"w3-btn w3-black\" formaction=\"UpdateBagItem\" formmethod=\"post\" type=\"submit\">Update</button>\n" +
                    "                        </td>\n" +
                    "                        <td>\n" +
                    "                            <button align=\"right\" class=\"w3-btn w3-black\" formaction=\"CheckOut\" formmethod=\"post\" type=\"submit\">Checkout</button>\n" +
                    "                        </td>\n" +
                    "                    </tr>\n" +
                    "                </table>\n" +
                    "\n" +
                    "            </form>";
        } else {
            view += "                        <td>\n" +
                    "                            <button align=\"right\" class=\"w3-btn w3-black\" formaction=\"UpdateBagItem\" formmethod=\"post\" type=\"submit\">Update</button>\n" +
                    "                        </td>\n" +
                    "                    </tr>\n" +
                    "                </table>\n" +
                    "\n" +
                    "            </form>";
        }
        return view;
    }
}
