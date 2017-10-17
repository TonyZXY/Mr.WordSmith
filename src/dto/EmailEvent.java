package dto;

import java.util.ArrayList;

/**
 * Create by Intellij IDEA
 * Project : Mr.WordSmith
 * User : TonyZheng
 * Date : 16/10/17
 */

public class EmailEvent {
    private String userID;
    private ArrayList<Event> events;

    public EmailEvent() {
    }

    public EmailEvent(String userID, ArrayList<Event> events) {
        this.userID = userID;
        this.events = events;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public ArrayList<Event> getEvents() {
        return events;
    }

    public void setEvents(ArrayList<Event> events) {
        this.events = events;
    }
}
