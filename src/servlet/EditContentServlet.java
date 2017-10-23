package servlet;

import database.DatabasePageContent;
import dto.PageContent;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 23/10/17
 */

@WebServlet(name = "EditContentServlet",urlPatterns = "/EditContent")
public class EditContentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<PageContent> contentArrayList = (ArrayList<PageContent>) request.getSession().getAttribute("content");
        HashMap<String,PageContent> contentHashMap = new HashMap<>();
        for(PageContent p:contentArrayList){
            contentHashMap.put(p.getName(),p);
        }
        String payment = request.getParameter("payment");
        String shipinternational = request.getParameter("shipinternational");
        String promotecode = request.getParameter("promotecode");
        String orderarrival = request.getParameter("orderarrival");
        String trackparcel = request.getParameter("trackparcel");
        String ifdamage = request.getParameter("ifdamage");
        String ifreturn = request.getParameter("ifreturn");
        String pilicy = request.getParameter("pilicy");
        String personalinfo = request.getParameter("personalinfo");
        String sensitiveinfo = request.getParameter("sensitiveinfo");
        String thirdparties = request.getParameter("thirdparties");
        String securityinfo = request.getParameter("securityinfo");
        String accessinfo = request.getParameter("accessinfo");
        String policyenquiries = request.getParameter("policyenquiries");
        String branding = request.getParameter("branding");
        String design = request.getParameter("design");

        if(!Objects.equals(payment,"")){
            contentHashMap.get("payment").setContent(payment);
        }
        if(!Objects.equals(shipinternational,"")){
            contentHashMap.get("shipinternational").setContent(shipinternational);
        }
        if(!Objects.equals(promotecode,"")){
            contentHashMap.get("promotecode").setContent(promotecode);
        }
        if(!Objects.equals(orderarrival,"")){
            contentHashMap.get("orderarrival").setContent(orderarrival);
        }
        if(!Objects.equals(trackparcel,"")){
            contentHashMap.get("trackparcel").setContent(trackparcel);
        }
        if(!Objects.equals(ifdamage,"")){
            contentHashMap.get("ifdamage").setContent(ifdamage);
        }
        if(!Objects.equals(ifreturn,"")){
            contentHashMap.get("ifreturn").setContent(ifreturn);
        }
        if(!Objects.equals(pilicy,"")){
            contentHashMap.get("pilicy").setContent(pilicy);
        }
        if(!Objects.equals(personalinfo,"")){
            contentHashMap.get("personalinfo").setContent(personalinfo);
        }
        if(!Objects.equals(sensitiveinfo,"")){
            contentHashMap.get("sensitiveinfo").setContent(sensitiveinfo);
        }
        if(!Objects.equals(thirdparties,"")){
            contentHashMap.get("thirdparties").setContent(thirdparties);
        }
        if(!Objects.equals(securityinfo,"")){
            contentHashMap.get("securityinfo").setContent(securityinfo);
        }
        if(!Objects.equals(accessinfo,"")){
            contentHashMap.get("accessinfo").setContent(accessinfo);
        }
        if(!Objects.equals(policyenquiries,"")){
            contentHashMap.get("policyenquiries").setContent(policyenquiries);
        }
        if(!Objects.equals(branding,"")){
            contentHashMap.get("branding").setContent(branding);
        }
        if(!Objects.equals(design,"")){
            contentHashMap.get("design").setContent(design);
        }

        DatabasePageContent.updateContent(contentHashMap);

        response.sendRedirect("EditPageContent.jsp");
    }
}
