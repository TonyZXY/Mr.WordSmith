package servlet;

import dto.Stuff;
import model.StuffsFunc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminLoginServlet", urlPatterns = "/AdminLogin")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userID = request.getParameter("id");
        String password = request.getParameter("password");

        boolean login = StuffsFunc.login(userID, password);
        if (login) {
            Stuff stuff = StuffsFunc.getStuff();
            request.getSession().setAttribute("stuff", stuff);

            //TODO send Redirect
        } else {
            request.getSession().setAttribute("Login", "Invalid UserID or Password");
            response.sendRedirect("AdminLogin.jsp");
        }
    }

}
