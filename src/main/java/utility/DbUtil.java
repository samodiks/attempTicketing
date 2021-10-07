package utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbUtil {
private Connection connection;
private PreparedStatement statement;
    public DbUtil() {
        try {
            connection = DbSource.getInstance().getConnection();
        } catch (Exception ex) {
            System.out.println(ex.getMessage()); }
    }

    public ResultSet readFromDb(String query)
    {
        try {
            statement = connection.prepareStatement(query);
            return statement.executeQuery(query);
        }
        catch (SQLException ex) {  System.out.println(ex.getMessage());}
        return null;
    }
    public int updateDb(String query)
    {
        try {
            statement = connection.prepareStatement(query);
            return statement.executeUpdate(query);
            }
        catch(SQLException ex) {
            System.out.println(ex.getMessage()); }
        return 0;
    }

    public void closeConnection()
    {
        try {
            statement.close();
            connection.close();
        } catch(SQLException ex){ System.out.println(ex.getMessage());}
    }
    @Override
    protected void finalize() {
        this.closeConnection();
    }

}
