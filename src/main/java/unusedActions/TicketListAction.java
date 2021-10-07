package unusedActions;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(
        name="Ticket List",
        urlPatterns = "/ticket-list")
public class TicketListAction extends HttpServlet {

}
