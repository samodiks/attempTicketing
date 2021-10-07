package model.login;

import utility.DbUtil;

import java.sql.ResultSet;

public class LoginBean extends DbUtil implements LoginBeanI<User>{

    public boolean checkUser(User user) throws Exception {
        ResultSet result = readFromDb("SELECT username, password FROM tbl_users WHERE username='"+user.getUsername()+"' AND password='"+user.getPassword()+"'");
        return (result.next());
    }
    public User fetchUserDetails(User user)
    {
        try
        {
            ResultSet res =readFromDb("SELECT userId,username,email FROM tbl_users WHERE username='"+user.getUsername()+"' AND password='"+user.getPassword()+"'");
            while (res.next())
            {
                user = new User(res.getInt("userId"),res.getString("username"),res.getString("email"));
            }

        } catch (Exception ex){
            System.out.println("Error while fetching user details" + ex);
        }
        return user;
    }
}
