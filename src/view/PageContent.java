package view;


import database.DatabasePageContent;

import java.util.ArrayList;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 21/10/17
 */

public class PageContent {
    public static String view(String name){
        String content = "";
        content = DatabasePageContent.getContent(name);

        return content;
    }

    public static String editPageContentView(ArrayList<dto.PageContent> contents){
        String view = "";
        for(dto.PageContent p:contents){
            view += "                <br>\n" +
                    "                <div class=\"w3-container\">\n" +
                    "                    <label>"+ dto.PageContent.label(p.getName())+"</label>\n" +
                    "                    <br>\n" +
                    "                    <label>"+p.getContent()+"</label>\n" +
                    "                    <center></center>\n" +
                    "<br>"+
                    "                    <textarea rows=\"10\" cols=\"50\" name=\""+p.getName()+"\"></textarea>\n" +
                    "\n" +
                    "                    <br><br>\n"+
                    "               </div>\n";
        }
        return view;
    }
}
