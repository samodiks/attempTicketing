package action;

import dao.ClientDao;
import enumeration.Gender;
import enumeration.YesNo;
import model.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(
        name="Client Register",
        urlPatterns = {"/client-register","/edit-client","/delete-client"}
        )
public class ClientAction extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        try{
            switch (action)
            {
                case "/client-register":
                    clientCreation(req,resp);
                    break;
                case "/edit-client":
                    editClient(req,resp);
                    break;
                case "/delete-client":
                    deleteClient(req,resp);
                    break;

            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
    }

    private void clientCreation(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Client client = new Client();
        client.setClientId(req.getParameter("idNo"));
        client.setClientName(req.getParameter("clientName"));
        client.setEmail(req.getParameter("email"));
        client.setClientAddress(req.getParameter("clientAddress"));
        client.setGender(Gender.valueOf(req.getParameter("gender")));
        client.setDob((req.getParameter("dob")));
        client.setDeleted(YesNo.NO);

        ClientDao clientDao = new ClientDao();

        try {
            if (clientDao.create(client)){
                System.out.println("Client Creation  was successful");
                resp.sendRedirect("clientList.jsp");
            }
            else{
                System.out.println("Insertion was unsuccessful");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void deleteClient(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException
    {
        int id=Integer.valueOf(req.getParameter("id"));
        Client client = new Client();
        client.setId(id);
        client.setDeleted(YesNo.YES);

        ClientDao clientDao= new ClientDao();
        clientDao.remove(client);
    }
    private void editClient(HttpServletRequest req, HttpServletResponse resp)
    {
        Client client = new Client();
        client.setClientId(req.getParameter("clientId"));
        client.setClientName(req.getParameter("clientName"));
        client.setEmail(req.getParameter("email"));
        client.setClientAddress(req.getParameter("clientAddress"));
        client.setGender(Gender.valueOf(req.getParameter("gender")));
        client.setDob((req.getParameter("dob")));
        client.setDeleted(YesNo.NO);

        ClientDao clientDao = new ClientDao();

        try {
            if (clientDao.edit(client)){
                System.out.println("Client Creation  was successful");
                resp.sendRedirect("clientList.jsp");
            }
            else{
                System.out.println("Insertion was unsuccessful");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

