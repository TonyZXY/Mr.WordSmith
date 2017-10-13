package servlet;

import database.DatabaseStaff;
import dto.Product;
import model.StaffsFunc;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 12/10/17
 */

@WebServlet(name = "SalesReportServlet",urlPatterns = "/SalesReport")
public class SalesReportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            Date startDate = new Date(simpleDateFormat.parse(start).getTime());
            Date endDate = new Date(simpleDateFormat.parse(end).getTime());
            HashMap<Product,Integer> report = StaffsFunc.getSalesReport(startDate,endDate);
            System.out.println("Servlet sent");
            request.getSession().setAttribute("report",report);
            response.sendRedirect("SalesReport.jsp");
            //TODO redirect sent
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

}
