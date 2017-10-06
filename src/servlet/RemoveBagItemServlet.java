package servlet;

import database.DatabaseUpdateBagItem;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RemoveBagItemServlet", urlPatterns = "/RemoveBagItem")
public class RemoveBagItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productID = request.getParameter("productID");
        System.out.println(productID);
        User user = (User) request.getSession().getAttribute("user");

        DatabaseUpdateBagItem.updateBagItem(productID,0,user);


        response.sendRedirect("Bag.jsp");

    }

}
