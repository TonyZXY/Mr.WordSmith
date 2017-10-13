package servlet;

import database.DatabaseStaff;
import dto.Staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 13/10/17
 */

@WebServlet(name = "UpdateProfileServlet",urlPatterns = "/UpdateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Staff staff = (Staff)request.getSession().getAttribute("staff");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        if(!Objects.equals(email, "")){
            staff.setEmail(email);
        }

        if(!Objects.equals(address, "")){
            staff.setAddress(address);
        }

        if(!Objects.equals(phone,"")){
            staff.setPhoneNumber(phone);
        }

        if(!Objects.equals(password,"")){
            staff.setPassword(password);
        }

        DatabaseStaff.updateStaffDetail(staff);

        request.getSession().setAttribute("staff",staff);
        response.sendRedirect("UpdateProfile.jsp");
    }

}
