package model;

import enumeration.TicketLevel;

import java.math.BigDecimal;
import java.util.Date;

public class TicketEvent {
    private String ticketNo;
    private String eventName;
    private TicketLevel ticketLevel;
    private String eventVenue;
    private Date eventDate;
    private BigDecimal ticketPrice;
    private String url;

    public String getTicketNo() {
        return ticketNo;
    }

    public void setTicketNo(String ticketNo) {
        this.ticketNo = ticketNo;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public TicketLevel getTicketLevel() {
        return ticketLevel;
    }

    public void setTicketLevel(TicketLevel ticketLevel) {
        this.ticketLevel = ticketLevel;
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

    public BigDecimal getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(BigDecimal ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
