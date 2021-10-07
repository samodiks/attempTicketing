package utility;

import enumeration.EventStatus;
import enumeration.Gender;
import enumeration.TicketLevel;
import enumeration.TicketStatus;
import model.Client;
import model.Event;
import model.Ticket;
import model.TicketEvent;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Helper {

    static SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

    public static String dateToStringFormatter(Date date) {
        return format.format(date);
    }

    public static Date stringToDateFormatter(String date) {
        Date newDate = null;
        try {
            newDate = format.parse(date);
        } catch (ParseException ex) {
            System.out.println(ex.getMessage());
        }
        return newDate;
    }

    public static java.sql.Date utilDateToSqlDate(Date date) {
        return java.sql.Date.valueOf(format.format(date));
    }

    public static java.sql.Date stringToSqlDate(String date) {
        //SimpleDateFormat newformat = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date newDate = null;
        try {
            newDate = (java.sql.Date) format.parse(date);
        } catch (ParseException parseException) {
            parseException.printStackTrace();
        }
        return newDate;
    }

    public static Client convertToClient(ResultSet result) throws SQLException {
        Client client = new Client();
        client.setClientId(result.getString("clientId"));
        client.setClientName(result.getString("clientName"));
        client.setEmail(result.getString("email"));
        client.setClientAddress(result.getString("clientAddress"));
        client.setGender(Gender.valueOf(result.getString("gender")));
        client.setDob(result.getString("dob"));

        return client;
    }

    public static Event convertToEvent(ResultSet resultSet) {
        Event event = new Event();
        try {
            event.setEventNo(resultSet.getString("eventNo"));
            event.setEventId(resultSet.getString("eventId"));
            event.setEventName(resultSet.getString("eventName"));
            event.setEventVenue(resultSet.getString("eventVenue"));
            event.setEventDate(resultSet.getDate("eventDate"));
            event.setMaxCapacity(resultSet.getInt("maxCapacity"));
            event.setEventStatus(EventStatus.valueOf(resultSet.getString("eventStatus")));
            event.setUrl(resultSet.getString("url"));
        } catch (SQLException ex) {
            ex.getMessage();
        }


        return event;
    }

    //@org.jetbrains.annotations.NotNull
    public Ticket convertToTicket(ResultSet result) {
        Ticket ticket = new Ticket();
        try {
            ticket.setTicketNo(result.getString("ticketNo"));
            ticket.setEventNo(result.getString("eventNo"));
            ticket.setTicketLevel(TicketLevel.valueOf(result.getString("ticketLevel")));
            ticket.setTicketPrice(result.getBigDecimal("ticketPrice"));
            ticket.setTicketStatus(TicketStatus.valueOf(result.getString("ticketStatus")));
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return ticket;
    }
    public static TicketEvent convertToEventTicket(ResultSet result) throws SQLException {
        TicketEvent ticketEvent = new TicketEvent();
        ticketEvent.setTicketNo(result.getString("ticketNo"));
        ticketEvent.setTicketLevel(TicketLevel.valueOf(result.getString("ticketLevel")));
        ticketEvent.setEventName(result.getString("eventName"));
        ticketEvent.setEventVenue(result.getString("eventVenue"));
        ticketEvent.setEventDate(result.getDate("eventDate"));
        ticketEvent.setTicketPrice(result.getBigDecimal("ticketPrice"));
        ticketEvent.setUrl(result.getString("url"));

        return ticketEvent;
    }
}
