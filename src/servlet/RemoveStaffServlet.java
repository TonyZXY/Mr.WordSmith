package servlet;

import database.DatabaseStaff;

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

@WebServlet(name = "RemoveStaffServlet", urlPatterns = "/RemoveStaff")
public class RemoveStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        DatabaseStaff.removeStaff(id);
        response.sendRedirect("StuffManagement.jsp");
    }
}
