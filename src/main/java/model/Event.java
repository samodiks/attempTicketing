package model;

import enumeration.EventStatus;
import enumeration.YesNo;

import java.util.Date;

public class Event {
    private int id;
    private String eventNo;
    private String eventId;
    private String eventName;
    private String eventVenue;
    private Date eventDate;
    private int maxCapacity;
    private EventStatus eventStatus;
    private String url;
    private String clientId;
    private YesNo deleted;

    public Event(int id, String clientId,String eventNo, String eventId, String eventName, String eventVenue, Date eventDate, int maxCapacity, EventStatus eventStatus, String url, YesNo deleted) {
        this.id = id;
        this.eventNo = eventNo;
        this.eventId = eventId;
        this.eventName = eventName;
        this.eventVenue = eventVenue;
        this.eventDate = eventDate;
        this.maxCapacity = maxCapacity;
        this.eventStatus = eventStatus;
        this.url = url;
        this.clientId = clientId;
        this.deleted = deleted;
    }

    public Event() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public YesNo getDeleted() {
        return deleted;
    }

    public void setDeleted(YesNo deleted) {
        this.deleted = deleted;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getEventNo() {
        return eventNo;
    }

    public void setEventNo(String eventNo) {
        this.eventNo = eventNo;
    }

    public String getEventId() {
        return eventId;
    }

    public void setEventId(String eventId) {
        this.eventId = eventId;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getEventVenue() {
        return eventVenue;
    }

    public void setEventVenue(String eventVenue) {
        this.eventVenue = eventVenue;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public int getMaxCapacity() {
        return maxCapacity;
    }

    public void setMaxCapacity(int maxCapacity) {
        this.maxCapacity = maxCapacity;
    }

    public EventStatus getEventStatus() {
        return eventStatus;
    }

    public void setEventStatus(EventStatus eventStatus) {
        this.eventStatus = eventStatus;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }
}
