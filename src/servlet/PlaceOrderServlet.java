package servlet;

import database.DatabaseBagItems;
import database.DatabaseOrderList;
import dto.Item;
import dto.Order;
import dto.User;
import model.PlaceOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Objects;

@WebServlet(name = "PlaceOrderServlet",urlPatterns = "/MakePayment")
public class PlaceOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String payment = request.getParameter("payment");

        User user = (User)request.getSession().getAttribute("user");
        ArrayList<Item> bag = DatabaseBagItems.getBagForCheckOut(user);
        Double discount = 1.0;
        if(DatabaseOrderList.getDiscount(user)){
            discount = 0.85;
        }
        String FN = request.getParameter("FN");
        String LN = request.getParameter("LN");
        String PN = request.getParameter("PN");
        String post = request.getParameter("post");
        String address = request.getParameter("address");
        Date time = new Date(Calendar.getInstance().getTimeInMillis());
        if(Objects.equals(payment, "card")){
            String cardNumber = request.getParameter("cardNumber");
            String date = request.getParameter("date");
            String CVV = request.getParameter("CVV");
            String name = request.getParameter("name");
            payment = cardNumber;
        }
        Order order = new Order();
        order.setTime(time);
        order.setShippingAddress(address);
        order.setOrderList(bag);
        order.setFirstName(FN);
        order.setLastName(LN);
        order.setContactNumber(PN);
        order.setPostCode(post);
        order.setDiscount(discount);
        order.setPayment(payment);

        PlaceOrder.placeOrder(order,user);

        request.getSession().setAttribute("Message","You have successfully checkout your order.");
        request.getSession().setAttribute("MessageRedirect","index.jsp");
        response.sendRedirect("Message.jsp");


//        response.sendRedirect("index.jsp");


    }

}
