package servlet;

import database.DatabaseBagItems;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductToBagServlet", urlPatterns = "/AddProduct")
public class AddProductToBagServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String productID = request.getParameter("pid");
        String quantity = request.getParameter("ProdQty");
        if (user == null) {
            String link = "Login.jsp";
            String redirect = "ProductDetail.jsp?pid=" + productID;
            request.getSession().setAttribute("Login", "Please Login Before Adding Items");
            request.getSession().setAttribute("Redirect",redirect);
            response.sendRedirect(link);
        } else {

            DatabaseBagItems.AddBagItem(user, productID, Integer.valueOf(quantity));

            String link = "ProductDetail.jsp?pid=" + productID;
            response.sendRedirect(link);
        }
    }

}
