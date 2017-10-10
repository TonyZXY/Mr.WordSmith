package view;

import database.DatabaseOrderList;
import dto.Item;
import dto.Order;
import dto.User;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class OrderListViewAccountPage {

    public static String getOrderListView(User user) {
        String view = "";
        ArrayList<Order> orders = DatabaseOrderList.getOrderList(user);
        DecimalFormat df = new DecimalFormat("0.00");

        for (Order order : orders
                ) {
            view += "<tr>\n" +
                    "                            <td style=\"font-size: small\" width=\"30%\">" + order.getOrderID() + "</td>\n" +
                    "                            <td style=\"font-size: small\" width=\"30%\">" + order.getTime() + "</td>\n" +
                    "                            <td style=\"font-size: small\" width=\"30%\">" + order.getShippingAddress() + "</td>\n" +
                    "                            <td style=\"font-size: small\" width=\"35%\"> $" + df.format(calcuateTotalPrice(order)) + "</td>\n" +
                    "                        </tr>";
        }
        return view;
    }

    private static double calcuateTotalPrice(Order order) {
        ArrayList<Item> items = order.getOrderList();
        double total = 0;
        for (Item item : items) {
            BigDecimal price = new BigDecimal(String.valueOf(item.getProduct().getPrice()));
            BigDecimal quantity = new BigDecimal(String.valueOf(item.getNumber()));
            total += price.multiply(quantity).doubleValue();
        }
//        total = total * order.getDiscount();
        BigDecimal totalprice = new BigDecimal(String.valueOf(total));
        BigDecimal discount = new BigDecimal(String.valueOf(order.getDiscount()));
        total = totalprice.multiply(discount).doubleValue();

        return total;
    }
}
