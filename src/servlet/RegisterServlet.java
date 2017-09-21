package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String firstName = request.getParameter("FirstName");
        String lastName = request.getParameter("LastName");
        request.getParameter("Birthday");
        String phoneNumber = request.getParameter("PhoneNumber");
    }

}
