package dto;

import java.util.ArrayList;
import java.util.StringTokenizer;

public class CustomizedProduct {
    public static int getNumberFromIDs(String string){
        ArrayList<String> customizedID = new ArrayList<>();
        StringTokenizer st = new StringTokenizer(string,",");
        String s;
        while ((s = st.nextToken()) !=null){
            customizedID.add(s);
        }
        return customizedID.size();
    }
}
