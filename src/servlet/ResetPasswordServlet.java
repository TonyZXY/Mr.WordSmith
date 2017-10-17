package servlet;

import database.DatabaseUser;
import model.ResetPassword;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ResetPasswordServlet",urlPatterns = "/ResetPassword")
public class ResetPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");

        response.sendRedirect("index.jsp");
        //TODO
//        request.getSession().setAttribute("Message","Your password send to your Email address.");
//        request.getSession().setAttribute("MessageRedirect","index.jsp");
//        response.sendRedirect("Message.jsp");


        ResetPassword.resetPassword(email);

    }

}
