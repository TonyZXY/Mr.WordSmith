package servlet;

import model.StaffsFunc;

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

@WebServlet(name = "UpdateStockLevelServlet", urlPatterns = "/UpdateStockLevel")
public class UpdateStockLevelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("Update");
        int number = Integer.valueOf(request.getParameter("number"));
        StaffsFunc.UpdateStockLevel(pid, number);

        response.sendRedirect("StockControl.jsp");
    }

}
