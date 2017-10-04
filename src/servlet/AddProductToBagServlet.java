package servlet;

import database.DatabaseAddBagItem;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProductToBagServlet",urlPatterns = "/AddProduct")
public class AddProductToBagServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        String productID = request.getParameter("pid");
        String quantity = request.getParameter("ProdQty");
        System.out.println(productID);
        System.out.println(quantity);

        DatabaseAddBagItem.AddBagItem(user,productID,Integer.valueOf(quantity));

        String link = "ProductDetail.jsp?pid="+productID;
        response.sendRedirect(link);
    }

}
