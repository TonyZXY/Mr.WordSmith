package servlet;

import dto.User;
import model.CustomizeProductAddition;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomizeProductAddServlet", urlPatterns = "/AddCustomizeProductToBag")
public class CustomizeProductAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String[] selected = request.getParameterValues("layout");
        User user = (User) request.getSession().getAttribute("user");

        CustomizeProductAddition.customizeAdd(user, selected);

        response.sendRedirect("CustomizeProduct.jsp?pid=MWE004");


    }

}
