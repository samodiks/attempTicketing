package action;

import dao.UserDao;
import model.login.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

@WebServlet(
        name="register",
        urlPatterns = "/user-register")
public class UserAction extends HttpServlet {

      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        /*  String action = req.getServletPath();
          switch (action)
          {
              case "/user-register":
                  registerUser(req, resp);
                  break;
              case "./delete-user":
                  deleteUser(req,resp);
                  break;
          }*/
          registerUser(req, resp);
      }

    private void registerUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            User user = new User();
            BeanUtils.populate(user, req.getParameterMap());
            UserDao userDao = new UserDao();
            if (userDao.create(user)){
                req.setAttribute("User_Reg","User added successfully");
                resp.sendRedirect("./login.jsp");
                System.out.println("User Creation  was successful");
            }
            else{
                req.setAttribute("User_Reg","User creation was unsuccessful");
                resp.sendRedirect("./user-registration.jsp");
                System.out.println("User creation was unsuccessful");
            }
        } catch (SQLException | InvocationTargetException | IllegalAccessException  e) {
            e.printStackTrace();
        }
    }

    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws IOException{
        User user = new User();
        UserDao userDao= new UserDao();
        userDao.remove(user);
    }
}
