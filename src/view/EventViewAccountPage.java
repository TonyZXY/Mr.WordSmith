package view;

import database.DatabaseGetEvents;
import dto.Event;
import dto.User;

import java.util.ArrayList;

public class EventViewAccountPage {
    public static String eventView(User user){
        String view = "";
        ArrayList<Event> events = DatabaseGetEvents.getEvent(user);
        for (Event event:events) {
            view += "<tr>\n" +
                    "                            <td style=\"font-size: small\" width=\"25%\">"+event.getDate()+"</td>\n" +
                    "                            <td style=\"font-size: small\" width=\"40\">"+event.getMessage()+"</td>\n" +
                    "                        </tr>";
        }
        return view;
    }
}
