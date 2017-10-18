package servlet;

import dto.User;
import model.CustomizeProductAddition;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 17/10/17
 */

@WebServlet(name = "CustomizeProductPreviewedServlet", urlPatterns = "/AddCustomizeProductAfterPreview")
public class CustomizeProductPreviewedServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] layout = (String[]) request.getSession().getAttribute("layout");
        User user = (User) request.getSession().getAttribute("user");

        CustomizeProductAddition.customizeAdd(user, layout);

        request.getSession().setAttribute("Message", "Customized product successfully add into your shopping bag.");
        request.getSession().setAttribute("MessageRedirect", "CustomizeProduct.jsp?pid=MWE004");
        response.sendRedirect("Message.jsp");

//        response.sendRedirect("CustomizeProduct.jsp?pid=MWE004");


    }
}
