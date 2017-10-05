package servlet;

import database.DatabaseUpdateUserDetail;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "AccountUpdateServlet", urlPatterns = "/UpdateAccountDetails")
public class AccountUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        String FN = request.getParameter("FN");
        String LN = request.getParameter("LN");
        String DoB = request.getParameter("DoB");
//        String Email = request.getParameter("EM");
        String Phone = request.getParameter("PN");
        String address = request.getParameter("AD");
        if(!Objects.equals(FN, "")){
            user.setFirstName(FN);
            System.out.println(FN);
        }
        if(!Objects.equals(LN, "")){
            user.setLastName(LN);
            System.out.println(LN);
        }
        if(!Objects.equals(DoB, "")){
            user.setBirthday(DoB);
            System.out.println(DoB);
        }
//        if(!Objects.equals(Email, "")){
//            user.setEmail(Email);
//            System.out.println(Email);
//        }
        if(!Objects.equals(Phone, "")){
            user.setPhone(Phone);
            System.out.println(LN);
        }
        if(!Objects.equals(address, "")){
            user.setAddress(address);
            System.out.println(address);
        }

        //@TODO

        DatabaseUpdateUserDetail.updateUserDetail(user);

        request.getSession().removeAttribute("user");

        request.getSession().setAttribute("user",user);
        response.sendRedirect("Account.jsp");

    }

}
