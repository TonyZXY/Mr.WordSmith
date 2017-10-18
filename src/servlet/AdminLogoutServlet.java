package servlet;

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
 * Date : 12/10/17
 */

@WebServlet(name = "AdminLogoutServlet", urlPatterns = "/AdminLogout")
public class AdminLogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("AdminLogin.jsp");

        //TODO
//        request.getSession().setAttribute("Message","You have successfully Logout.");
//        request.getSession().setAttribute("MessageRedirect","AdminLogin.jsp");
//        response.sendRedirect("AdminLogin.jsp");
        request.getSession().invalidate();
    }

}
