package model;

import database.DatabaseBagItems;
import database.DatabaseOrderList;
import database.DatabaseProduct;
import dto.Item;
import dto.Order;
import dto.User;

import java.util.ArrayList;
import java.util.Objects;

public class PlaceOrder {
    public static void placeOrder(Order order, User user) {
        int orderID = DatabaseOrderList.getMaxOrderID();
        order.setOrderID(orderID);
        DatabaseOrderList.insertOrder(order, user);

        ArrayList<Item> bag = DatabaseBagItems.getBag(user.getUserID());
        for (Item it : bag) {
            if (Objects.equals(it.getProduct().getProductID(), "MWE004")) {
                DatabaseProduct.updateOrderID(Integer.valueOf(it.getProduct().getCustomizeID()), orderID);
            }
        }


        ArrayList<Item> items = order.getOrderList();
        for (Item item : items) {
            if (!Objects.equals(item.getProduct().getProductID(), "MWE004")) {
                DatabaseBagItems.updateBagItem(item.getProduct().getProductID(), 0, user);
            } else {
                DatabaseBagItems.RemoveAllCustomizedProduct(user);
            }

        }


    }
}
