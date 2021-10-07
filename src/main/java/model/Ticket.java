package model;

import enumeration.TicketLevel;
import enumeration.TicketStatus;

import java.math.BigDecimal;

public class Ticket {
    private int id;
    private String ticketNo;
    private String eventNo;
    private TicketLevel ticketLevel;
    private BigDecimal ticketPrice;
    private TicketStatus ticketStatus;
    private int userId;

    public Ticket() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTicketNo() {
        return ticketNo;
    }

    public void setTicketNo(String ticketNo) {
        this.ticketNo = ticketNo;
    }

    public String getEventNo() {
        return eventNo;
    }

    public void setEventNo(String eventNo) {
        this.eventNo = eventNo;
    }

    public TicketLevel getTicketLevel() {
        return ticketLevel;
    }

    public void setTicketLevel(TicketLevel ticketLevel) {
        this.ticketLevel = ticketLevel;
    }

    public BigDecimal getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(BigDecimal ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public TicketStatus getTicketStatus() {
        return this.ticketStatus;
    }

    public void setTicketStatus(TicketStatus ticketStatus) {
        this.ticketStatus = ticketStatus;
    }
}
