package unusedActions;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ClientAction extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("Servlet Started and instantiated");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/client/add");
        requestDispatcher.forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/client/save");
        requestDispatcher.forward(req,resp);
    }

    @Override
    public void destroy() {
        System.out.println("Servlet Destroyed!!!");
    }


}

