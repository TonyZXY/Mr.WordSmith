package servlet;

import dto.User;
import model.Register;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "RegisterServlet", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String firstName = request.getParameter("FirstName");
        String lastName = request.getParameter("LastName");
        String birthday = request.getParameter("Birthday");
        String phoneNumber = request.getParameter("PhoneNumber");
        String address = request.getParameter("Address");

        System.out.println(email+" "+ password+" "+firstName+" "+lastName+" "+birthday+" "+address);

        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPassword(password);
        user.setBirthday(birthday);
        user.setAddress(address);
        user.setPhone("01231251412");
        if(Register.RegisterCheck(user)){
            request.getSession().setAttribute("RegisterMessage","");
            response.sendRedirect("Login.jsp");
        }else {
            request.getSession().setAttribute("RegisterMessage","Email already registered, please Login.");
            response.sendRedirect("Login.jsp");
        }
    }


}
