package dao;

import model.CartItem;
import model.Ticket;
import model.TicketEvent;
import model.login.User;
import repo.CrudRepo;
import utility.DbUtil;
import utility.Helper;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static utility.Helper.convertToEventTicket;

public class TicketDao extends DbUtil implements CrudRepo<Ticket> {

    Helper helper = new Helper();
    @Override
    public boolean create(Ticket ticket) {
        return false;
    }

    @Override
    public List<Ticket> viewAll() {
        List<Ticket> ticketList = new ArrayList<>();
        ResultSet result = readFromDb("Select * from tbl_tickets");
        try
        {
            while (result.next())
            {
                Ticket ticket = helper.convertToTicket(result);
                ticketList.add(ticket);
            }
        } catch (SQLException | IllegalArgumentException e) { e.printStackTrace(); }
        return ticketList;
    }

    @Override
    public boolean remove(Ticket ticket) {
        return false;
    }
    public List<Ticket> getTicketByEventNo(Ticket ticket)
    {
        List<Ticket> tickets = new ArrayList<>();
        ResultSet result = readFromDb("SELECT * FROM tbl_tickets where eventNo='"+ticket.getEventNo()+"'AND tbl_tickets.ticketStatus='ACTIVE'");
        try {
            while (result.next()) {
                ticket = helper.convertToTicket(result);
                tickets.add(ticket);
            }
        }
        catch(Exception exception) { exception.printStackTrace(); }
        return tickets;
    }
    public List<TicketEvent> getEventTicketByEventNo(TicketEvent ticketEvent)
    {
        List<TicketEvent> ticketEvents = new ArrayList<>();
        ResultSet result = readFromDb("SELECT * FROM tbl_tickets INNER JOIN tbl_events ON tbl_tickets.eventNo=tbl_events.eventNo WHERE tbl_tickets.ticketNo='"+ticketEvent.getTicketNo()+"' AND tbl_tickets.ticketStatus='ACTIVE'");
        try
        {
            while(result.next())
            {
                TicketEvent eventTicket = convertToEventTicket(result);
                ticketEvents.add(eventTicket);
            }
        }
        catch(Exception ex) {ex.printStackTrace();}
        return ticketEvents;
    }

    public List<Ticket> getFromCart(User user)
    {
        List<Ticket> cartItems = new ArrayList<>();
        String query = "SELECT * FROM tbl_cart where userId="+user.getUserId()+"";
        ResultSet resultSet = readFromDb(query);
        try {
            while (resultSet.next()) {
                CartItem cart = new CartItem();
                cart.setTicketNo(resultSet.getString("ticketNo"));
                cart.setTicketPrice(resultSet.getBigDecimal("ticketPrice"));
                cartItems.add(cart);
            }
        } catch (Exception ex){ex.printStackTrace();}
    return cartItems;
    }
    public boolean removeTicketFromCart(CartItem cartItem)
    {
       return updateDb("DELETE from tbl_cart where ticketNo='"+cartItem.getTicketNo()+"' AND userId="+cartItem.getUserId()+"")==1;
    }
    public boolean addTicketToCart(Ticket ticket)
    {
       return updateDb("INSERT INTO tbl_cart(ticketNo,ticketPrice,userId,deleted) VALUES('" + ticket.getTicketNo()+"',"+ ticket.getTicketPrice()+","+ticket.getUserId()+",'NO')")==1;
    }

    public List<CartItem> getTicketDetail(CartItem cartItem) throws SQLException {
        List<CartItem> cartTickets = new ArrayList<>();
        ResultSet result = readFromDb("select * from tbl_cart where userId=" + cartItem.getUserId() + "");

        while (result.next()) {
            CartItem cart = new CartItem();
            cart.setTicketNo(result.getString("ticketNo"));
            cart.setTicketPrice(result.getBigDecimal("ticketPrice"));
            cartTickets.add(cart);
        }
        return cartTickets;

    }

    public boolean purchaseTicket(Ticket ticket)
    {
       return updateDb("UPDATE tbl_tickets set ticketStatus='ENDED' WHERE ticketNo='"+ticket.getTicketNo()+"'")==1;
    }
    public void removeOnPurchase(CartItem cartItem)
    {
       updateDb("DELETE FROM tbl_cart WHERE userId="+cartItem.getUserId()+"");
    }

    @Override
    public boolean edit(Ticket ticket) {
        return false;
    }

    public BigDecimal getTotalTicketPrice(User user) throws SQLException {
        String query = "SELECT SUM(ticketPrice) AS totalPrice FROM tbl_cart WHERE userId="+user.getUserId()+"";
        ResultSet result = readFromDb(query);
        BigDecimal totalPrice = BigDecimal.valueOf(0.00);
        while(result.next())
        {
            String price = result.getString("totalPrice");
            if (price!=null)
                totalPrice = new BigDecimal(price);
        }
        return totalPrice;
    }
}