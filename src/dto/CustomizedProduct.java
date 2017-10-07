package dto;

import java.util.ArrayList;
import java.util.StringTokenizer;

public class CustomizedProduct {
    public static int getNumberFromIDs(String string) {
        StringTokenizer st = new StringTokenizer(string, ",");
        ArrayList<String> customizedID = new ArrayList<>();
        String s;
        while ((s = st.nextToken()) != null) {
            customizedID.add(s);
        }
        return customizedID.size();
    }
}
