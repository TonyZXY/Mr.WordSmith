package dto;

public class Event {
    private String Date;
    private String message;
    private String eventID;


    public String getEventID() {
        return eventID;
    }

    public void setEventID(String eventID) {
        this.eventID = eventID;
    }

    public Event(String date, String message, String eventID) {

        Date = date;
        this.message = message;
        this.eventID = eventID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Event(){

    }


}
