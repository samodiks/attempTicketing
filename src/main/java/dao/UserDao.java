package dao;

import model.login.User;
import repo.CrudRepo;
import utility.DbUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends DbUtil implements CrudRepo<User> {
    @Override
    public boolean create(User user) throws SQLException {

        int result =updateDb("insert into tbl_users (username, email, password)" +
                " VALUES('" + user.getUsername() + "','" + user.getEmail()+"','"+ user.getPassword()+"')");

        return result==1;
    }

    @Override
    public List<User> viewAll() throws SQLException {
        List<User> users = new ArrayList<>();
        ResultSet res = readFromDb("SELECT * FROM tbl_users");
        while (res.next())
        {
            User user = new User();
            user.setUserId(res.getInt("userId"));
            user.setUsername(res.getString("username"));
            user.setEmail(res.getString("email"));
            user.setPassword(res.getString("password"));
            users.add(user);
        }
        return users;
    }

    @Override
    public boolean remove(User user) {
        return false;
    }

    @Override
    public boolean edit(User user) {
        return false;
    }
}
