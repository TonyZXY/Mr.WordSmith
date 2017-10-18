package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LogoutServlet",urlPatterns = "/Logout")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("index.jsp");

        //TODO
//        request.getSession().setAttribute("Message","You have successfully logout.");
//        request.getSession().setAttribute("MessageRedirect","index.jsp");
//        response.sendRedirect("Message.jsp");


        request.getSession().invalidate();
    }

}
