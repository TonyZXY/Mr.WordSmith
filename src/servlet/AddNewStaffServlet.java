package servlet;

import database.DatabaseStaff;
import dto.Staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 13/10/17
 */

@WebServlet(name = "AddNewStaffServlet",urlPatterns = "/AddNewStaffServlet")
public class AddNewStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Staff staff = new Staff();
        String id = request.getParameter("id");
        String FN = request.getParameter("FirstName");
        String LN = request.getParameter("LastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String admin = request.getParameter("admin");
        staff.setAddress(address);
        staff.setAdmin(admin);
        staff.setEmail(email);
        staff.setStuffID(id);
        staff.setFirst_name(FN);
        staff.setLast_name(LN);
        staff.setPhoneNumber(phone);
        staff.setPassword(password);

        DatabaseStaff.insertNewStaff(staff);

        //TODO
//        request.getSession().setAttribute("Message","New staff add successfully.");
//        request.getSession().setAttribute("MessageRedirect","StuffManagement.jsp");
//        response.sendRedirect("Message.jsp");

        response.sendRedirect("StuffManagement.jsp");
    }

}
