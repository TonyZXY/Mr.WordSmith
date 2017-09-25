package servlet;

import dto.User;
import model.Register;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This class is to receive request for register
 * and call other method to check register valid or not
 * then send redirect to login with the message.
 */
@WebServlet(name = "RegisterServlet", urlPatterns = "/Register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get message passed from page
        String email = request.getParameter("Email");
        String password = request.getParameter("Password");
        String firstName = request.getParameter("FirstName");
        String lastName = request.getParameter("LastName");
        String birthday = request.getParameter("Birthday");
        String phoneNumber = request.getParameter("PhoneNumber");
        String address = request.getParameter("Address");

        System.out.println(email + " " + password + " " + firstName + " " + lastName + " " + birthday + " " + address + " " + phoneNumber);

        //generate a data transport object User to pass message
        User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPassword(password);
        user.setBirthday(birthday);
        user.setAddress(address);
        user.setPhone(phoneNumber);

        //call method to check the user email is in database or not
        if (Register.RegisterCheck(user)) {
            //if no, register successful, and ask user to log in. but no success page displayed
            request.getSession().setAttribute("RegisterMessage", "");
            request.getSession().setAttribute("message","");
            response.sendRedirect("Login.jsp");
        } else {
            //if yes, ask user log in using their email. and alert user using message.
            request.getSession().setAttribute("message","");
            request.getSession().setAttribute("RegisterMessage", "Email already registered, please Login.");
            response.sendRedirect("Login.jsp");
        }
    }


}
