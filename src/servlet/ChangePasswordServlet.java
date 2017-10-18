package servlet;

import dto.User;
import model.ChangePassword;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChangePasswordServlet", urlPatterns = "/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String old_password = request.getParameter("old");
        String new_password = request.getParameter("new");


        boolean success = ChangePassword.changePassword(user, old_password, new_password);
        if (success) {
            request.getSession().setAttribute("PasswordInfo", "You have successfully change your password");

            //TODO
            request.getSession().setAttribute("Message", "You have successfully change your password.");
            request.getSession().setAttribute("MessageRedirect", "Account.jsp");
            response.sendRedirect("Message.jsp");
        } else {
            request.getSession().setAttribute("PasswordInfo", "Old Password Incorrect");
        }
//        response.sendRedirect("Account.jsp");
    }

}
