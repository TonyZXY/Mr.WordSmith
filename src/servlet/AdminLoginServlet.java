package servlet;

import dto.Staff;
import model.StaffsFunc;

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
        System.out.println(userID);
        System.out.println(password);

        boolean login = StaffsFunc.login(userID, password);
        if (login) {
            Staff staff = StaffsFunc.getStaff();
            request.getSession().setAttribute("staff", staff);
            response.sendRedirect("AdminDetail.jsp");
        } else {
            request.getSession().setAttribute("Login", "Invalid UserID or Password");
            response.sendRedirect("AdminLogin.jsp");
        }
    }

}
