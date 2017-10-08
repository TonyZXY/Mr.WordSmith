package servlet;

import database.DatabaseBagItems;
import dto.Item;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UpdateBagItemServlet",urlPatterns = "/UpdateBagItem")
public class UpdateBagItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Item> items = (ArrayList<Item>) request.getSession().getAttribute("bagItem");
        User user = (User)request.getSession().getAttribute("user");

        for (Item item : items) {
            if (request.getParameter(item.getProduct().getProductID()) != null) {
                int number = Integer.valueOf(request.getParameter(item.getProduct().getProductID()));
                item.setNumber(number);
            }
        }
        for (Item item:items){
            System.out.println(item.getNumber());
        }

        DatabaseBagItems.updateBagItems(items,user);


        response.sendRedirect("Bag.jsp");
    }

}
