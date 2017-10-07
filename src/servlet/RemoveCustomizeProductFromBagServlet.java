package servlet;

import database.DatabaseUpdateCustomizeProductBag;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RemoveCustomizeProductFromBagServlet",urlPatterns = "/RemoveCustomizedBagItem")
public class RemoveCustomizeProductFromBagServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("customizedID");
        User user = (User)request.getSession().getAttribute("user");

        DatabaseUpdateCustomizeProductBag.RemoveCustomizedProduct(user,id);

        response.sendRedirect("Bag.jsp");
    }

}
