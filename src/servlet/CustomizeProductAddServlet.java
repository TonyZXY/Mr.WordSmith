package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomizeProductAddServlet",urlPatterns = "/AddCustomizeProductToBag")
public class CustomizeProductAddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String[] selected = request.getParameterValues("layout");

        for (String aSelected : selected) {
            System.out.println(aSelected);
        }
    }

}
