package dao;

import model.Client;
import repo.CrudRepo;
import utility.DbUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static utility.Helper.convertToClient;

public class ClientDao extends  DbUtil implements CrudRepo<Client> {
    @Override
    public boolean create(Client client) throws SQLException {

        int result = updateDb("insert into tbl_clients (clientId, clientName, email, clientAddress, gender,deleted,dob)" +
                    " VALUES('" + client.getClientId() + "','" + client.getClientName() + "','"+ client.getEmail() +"','" + client.getClientAddress() + "','"
                    + client.getGender() + "','" + client.getDeleted() + "','" + client.getDob() +"')");

        return result == 1;
    }

    @Override
    public List<Client> viewAll() {
        List<Client> clientList = new ArrayList<>();
        ResultSet result = readFromDb("SELECT * FROM tbl_clients");
        try {
            while (result.next()) {
                Client viewClient = convertToClient(result);
                clientList.add(viewClient);
            }
        } catch (SQLException ex){ex.getMessage();}
        return clientList;
    }
    @Override
    public boolean remove(Client client) {
        int result = updateDb("UPDATE tbl_clients set deleted = 'YES' WHERE clientId="+ client.getClientId()+"");
        return (result==1);
    }

    public  boolean edit(Client client)
    {
    return true;
    }

    public boolean addClientToDeletedTable(Client client)
    {
        String query = "INSERT into delete_clients (clientId, reason_for-deletion, deletion_date) VALUES('" +
                client.getClientId()+"','";
        return true;
    }
}
