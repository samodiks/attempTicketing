package action;

import dao.TicketDao;
import enumeration.TicketStatus;
import model.CartItem;
import model.Ticket;
import model.login.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

@WebServlet(
        name = "Purchase Ticket",
        urlPatterns = {"/add-to-cart","/remove-from-cart"}
        )
public class TicketAction extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            /**
             * @on_purchase:
             * - Check if client is registered, if yes pass email address
             * - List tickets where ticket status isEqual to ACTIVE
             * - Create table EventsTickets insert into eventTickets table purchased tickets from cart
             * - Update tickets table set ticket status = purchased
             * - update tickets table set client id = to the client email of the purchasing client
             **/
        String action = req.getServletPath();
        switch (action)
        {
            case "/add-to-cart":
                addToCart(req,resp);
                break;
            case "/remove-from-cart":
                delete(req,resp);
        }

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


    private void addToCart(HttpServletRequest req, HttpServletResponse resp) {
        Ticket ticket = new Ticket();

        ticket.setTicketNo(req.getParameter("ticketNo"));
        BigDecimal num = new BigDecimal(req.getParameter("price"));
        ticket.setTicketPrice(num);

        TicketDao ticketDao = new TicketDao();
        try{
            if( ticketDao.addTicketToCart(ticket)) {
                System.out.println("Successfully added to cart");
                resp.sendRedirect("./viewTickets.jsp?id="+ req.getParameter("id")+"");
            }
            else
                System.out.println("Ticket failed to add to cart");
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }

    public void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        CartItem cart = new CartItem();
        cart.setId(Integer.parseInt(req.getParameter("id")));
        TicketDao tdao = new TicketDao();
        if (tdao.removeTicketFromCart(cart)) {
            resp.sendRedirect("./cart.jsp");
            System.out.println("Ticket removed from cart Successfully");
        } else {
            System.out.println("Failed to remove from cart");
            resp.sendRedirect("./cart.jsp");
        }
    }

}
