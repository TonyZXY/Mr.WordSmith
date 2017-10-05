package servlet;

import dto.User;
import model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This class is to receive the Login request and sent the request to Login business logic (Login.class)
 * and response the request of login successful or not
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("UserName");
        String password = request.getParameter("Password");

        System.out.println(username + " " + password);
        if (Login.Authenticate(username, password)) {
            User user = Login.getUser();
            System.out.println("user got in servlet");
            request.getSession().setAttribute("user", user);
            System.out.println("attribute added");
            response.sendRedirect("index.jsp");
            System.out.println("redirect sent");
            return;
        } else {
            request.getSession().setAttribute("RegisterMessage","");
            request.getSession().setAttribute("message", "Invalid Username or Password");
            response.sendRedirect("Login.jsp");
            return;
        }
    }

}
