package view;

import database.DatabasePageContent;

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
}
