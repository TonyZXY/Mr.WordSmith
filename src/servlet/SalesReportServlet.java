package servlet;

import database.DatabaseStaff;

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

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 12/10/17
 */

@WebServlet(name = "SalesReportServlet")
public class SalesReportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            Date startDate = new Date(simpleDateFormat.parse(start).getTime());
            Date endDate = new Date(simpleDateFormat.parse(end).getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

}
