package action;

import dao.TicketDao;
import model.CartItem;
import model.Ticket;
import model.login.User;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        name = "Add to cart",
        urlPatterns = {"/cart","/delete-cart","/purchase-ticket"}
)
public class CartAction extends HttpServlet {
    TicketDao ticketDao;
    @Override
    public void init(ServletConfig config) {
        ticketDao = new TicketDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            doGet(req, resp);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        try {
            switch(action){
                case "/cart":

                addingToCart(req, resp);
                break;
                case "/delete-cart":
                removeFromCart(req, resp);
                break;
                case "/purchase-ticket":
                purchaseTicket(req,resp);
                break;
            }

        } catch (SQLException e) { e.printStackTrace(); }
    }

    private void addingToCart(HttpServletRequest req, HttpServletResponse resp) {
        Ticket ticket = new Ticket();
        ticket.setTicketNo(req.getParameter("ticketNo"));
        ticket.setTicketPrice(new BigDecimal(req.getParameter("price")));
        User user = (User) req.getSession().getAttribute("username");
        ticket.setUserId(user.getUserId());
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
    protected void removeFromCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CartItem cartItem = new CartItem();
        User user = (User) req.getSession().getAttribute("username");
        cartItem.setUserId(user.getUserId());
        cartItem.setTicketNo(req.getParameter("ticketNo"));

        TicketDao ticketDao = new TicketDao();
        if (ticketDao.removeTicketFromCart(cartItem)) {
            System.out.println("Ticket removed successfully");
            resp.sendRedirect("./cart.jsp");
        }
    }
    private void purchaseTicket(HttpServletRequest httpRequest, HttpServletResponse httpResponse) throws IOException, SQLException {
        User user = (User) httpRequest.getSession().getAttribute("username");
        CartItem cart= new CartItem();
        cart.setUserId(user.getUserId());

        if(ticketSale(cart))
        {
            removeTicketOnPurchase(httpRequest);
            httpResponse.sendRedirect("./home.jsp");
        }
    }

    private boolean ticketSale(CartItem cart) throws SQLException {
        List<CartItem> cartList =ticketDao.getTicketDetail(cart);
        for(Ticket cartItem: cartList) {
            ticketDao.purchaseTicket(cartItem);
        }
        return true;
    }
    private boolean removeTicketOnPurchase(HttpServletRequest request)
    {
        User user = (User) request.getSession().getAttribute("username");
        CartItem cart= new CartItem();
        cart.setUserId(user.getUserId());
        return ticketDao.removeOnPurchase(cart);
    }

}
