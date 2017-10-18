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
 * Date : 18/10/17
 */

@WebServlet(name = "CheckLoginServlet", urlPatterns = "/CheckLogin")
public class CheckLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getSession().setAttribute("Message", "Please login before check your bag.");
        request.getSession().setAttribute("MessageRedirect", "Login.jsp");
        response.sendRedirect("Message.jsp");
    }

}
