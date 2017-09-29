package dto;

import java.util.ArrayList;
import java.util.StringTokenizer;

public class CustomizedProduct {
    private static ArrayList<String> customizedID = new ArrayList<>();
    public static int getNumberFromID(String string){
        StringTokenizer st = new StringTokenizer(string,",");
        String s;
        while ((s = st.nextToken()) !=null){
            customizedID.add(s);
        }
        return customizedID.size();
    }
}
