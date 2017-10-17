package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 17/10/17
 */

@WebServlet(name = "PreviewServlet", urlPatterns = "/Preview")
public class PreviewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] selected = request.getParameterValues("layout");
        String[] options = request.getParameterValues("option");


        response.sendRedirect("");


    }

}
