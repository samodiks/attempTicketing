package dao;

import enumeration.TicketLevel;
import enumeration.TicketStatus;
import model.Client;
import model.Event;
import model.Ticket;
import repo.CrudRepo;
import utility.DbUtil;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static utility.Helper.convertToEvent;

public class EventDao extends DbUtil implements CrudRepo<Event> {
    @Override
    public boolean create(Event event) {
        int result =updateDb("INSERT INTO tbl_events (eventNo,eventId,eventName,eventVenue,eventDate,maxCapacity,eventStatus,url,clientId,deleted)" +
                "VALUES('"+event.getEventNo()+"','"+event.getEventId()+"','"+event.getEventName()+"','"+event.getEventVenue()+"','"+ new Date(event.getEventDate().getTime()) +"'," +
                ""+event.getMaxCapacity()+",'"+event.getEventStatus()+"','"+event.getUrl()+"',"+event.getClientId()+",'"+event.getDeleted()+"')");

        return result==1;
    }
    @Override
    public List<Event> viewAll()  {
        List<Event> eventList = new ArrayList<>();
        ResultSet resultSet = readFromDb("SELECT * FROM tbl_events");
        try {
            while (resultSet.next()) {
                Event viewEvent = convertToEvent(resultSet);
                eventList.add(viewEvent);
            }
        }
        catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return eventList;
    }

    @Override
    public boolean edit(Event event) {
        return false;
    }

    @Override
    public boolean remove(Event event) {
        int result= updateDb("UPDATE tbl_events set deleted = 1 WHERE eventNo='"+event.getEventNo()+"'");
        return (result==1);
    }
//get event by id and pass to generateTicket
    private  Event getEventByEventNo(Event event)
    {
        ResultSet result = readFromDb("SELECT * FROM tbl_events where eventNo='"+event.getEventNo()+"'");
        event = convertToEvent(result);
        return event;
    }
    //Ticket Generation
    public void generateTicket(Event event)
    {
            Ticket ticket = new Ticket();
            ticket.setEventNo(event.getEventNo());
            ticket.setTicketStatus(TicketStatus.ACTIVE);

            int vvipTicketCount = event.getMaxCapacity()* 1/3;
            int vipTicketCount = event.getMaxCapacity() * 1/3;
            int regularCount = event.getMaxCapacity() * 1/3;

            //Generate VVIP Tickets
            for (int k = 1; k <= vvipTicketCount; k++) {
                ticket.setTicketNo(k + event.getEventId()+ TicketLevel.VVIP);
                ticket.setTicketPrice(BigDecimal.valueOf(5000.00));
                ticket.setTicketLevel(TicketLevel.VVIP);
                String query = "INSERT INTO tbl_tickets (ticketNo, eventNo, ticketLevel, ticketPrice, ticketStatus,deleted) VALUES('"
                        + ticket.getTicketNo()+"','"+ ticket.getEventNo()+"','"+ ticket.getTicketLevel()+"',"+ ticket.getTicketPrice()+",'"+
                        ticket.getTicketStatus()+"','NO')";
                updateDb(query);
            }
            //Generate VIP Tickets
            for(int k = 1; k <= vipTicketCount; k++) {
                ticket.setTicketNo(k + event.getEventId()+ TicketLevel.VIP);
                ticket.setTicketPrice(BigDecimal.valueOf(3000.00));
                ticket.setTicketLevel(TicketLevel.VIP);
                String query = "INSERT INTO tbl_tickets (ticketNo, eventNo, ticketLevel, ticketPrice, ticketStatus, deleted) VALUES('"
                        + ticket.getTicketNo()+"','"+ ticket.getEventNo()+"','"+ ticket.getTicketLevel()+"',"+ ticket.getTicketPrice()+",'"+
                        ticket.getTicketStatus()+"','NO')";
                updateDb(query);
            }
                //Generate Regular Tickets
            for (int k = 1; k <= regularCount; k++) {
                ticket.setTicketNo( k + event.getEventId()+ TicketLevel.REGULAR);
                ticket.setTicketPrice(BigDecimal.valueOf(1000.00));
                ticket.setTicketLevel(TicketLevel.REGULAR);
                String query = "INSERT INTO tbl_tickets (ticketNo, eventNo, ticketLevel, ticketPrice, ticketStatus, deleted) VALUES('"
                        + ticket.getTicketNo()+"','"+ ticket.getEventNo()+"','"+ ticket.getTicketLevel()+"',"+ ticket.getTicketPrice()+",'"+
                        ticket.getTicketStatus()+"','NO')";
                updateDb(query);
            }
        }

}
