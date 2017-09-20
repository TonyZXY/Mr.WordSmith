package servlet;

import dto.User;
import model.Login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("UserName");
        String password = request.getParameter("Password");


        System.out.println(username+" "+ password);
        if(Login.Authenticate(username,password)){
            User user = Login.getUser();
            request.getSession().setAttribute("user",user);
            response.sendRedirect("index.jsp");
            return;
        }else {
            request.getSession().setAttribute("message","Invalid Username or Password");
            response.sendRedirect("Login.jsp");
            return;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
