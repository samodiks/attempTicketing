package unusedActions;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(
        name="Client List",
        urlPatterns = "/client-list")
public class ClientList extends HttpServlet {

}
