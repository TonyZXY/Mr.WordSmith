package servlet;

import dto.Order;
import model.PlaceOrder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 21/10/17
 */

@WebServlet(name = "SetPaymentServlet",urlPatterns = "/Payment")
public class SetPaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order order = (Order)request.getSession().getAttribute("order");
        System.out.println(request.getParameter("payment"));
        if(Objects.equals(request.getParameter("payment"),"Pay Card")){
            order.setPayment(request.getParameter("cardNumber"));
            PlaceOrder.updateOrderPayment(order);
        }
        if(Objects.equals(request.getParameter("payment"),"AfterPay")){
            order.setPayment(request.getParameter("payment"));
            PlaceOrder.updateOrderPayment(order);
        }

        response.sendRedirect("index.jsp");
    }

}
