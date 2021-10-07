package unusedActions;

import dao.ClientDao;
import enumeration.Gender;
import enumeration.YesNo;
import model.Client;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class ClientSave extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        Client client = new Client();
        client.setClientId(request.getParameter("idno"));
        //System.out.println(request.getParameter("idno"));
        client.setClientName(request.getParameter("clientName"));
        client.setClientAddress(request.getParameter("clientAddress"));
        client.setGender(Gender.valueOf(request.getParameter("gender")));
        client.setDob((request.getParameter("dob")));
        client.setDeleted(YesNo.NO);

        ClientDao clientDao = new ClientDao();
        try {
            clientDao.create(client);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        requestDispatcher = request.getRequestDispatcher("./clientList.jsp");
        requestDispatcher.forward(request,response);
    }
}
