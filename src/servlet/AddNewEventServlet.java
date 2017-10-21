package servlet;

import database.DatabaseEvents;
import dto.Event;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddNewEventServlet", urlPatterns = "/AddNewEvent")
public class AddNewEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Event event = new Event();
        User user = (User) request.getSession().getAttribute("user");
        String userID = user.getUserID();
        String EventTime = request.getParameter("time");
        String message = request.getParameter("message");
        event.setDate(EventTime);
        event.setMessage(message);

        DatabaseEvents.addNewEvent(userID, event);

        //TODO
//        request.getSession().setAttribute("Message", "Important Date Add successfully.");
//        request.getSession().setAttribute("MessageRedirect", "Account.jsp");
//        response.sendRedirect("Message.jsp");

//        response.sendRedirect("Account.jsp");
    }
}
