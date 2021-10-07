package action;

import dao.UserDao;
import model.login.LoginBean;
import model.login.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(
        name="login",
        urlPatterns = {"/login"})
public class LoginAction  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        LoginBean loginBean = new LoginBean();
        try{
            User user = new User();
            BeanUtils.populate(user,req.getParameterMap());

            if (loginBean.checkUser(user)) {
                    session.setAttribute("username", loginBean.fetchUserDetails(user));
                    resp.sendRedirect("./home.jsp");

                System.out.println("Login was successful!!");
            }
            else {
                session.setAttribute("LOGIN_MSG", "Invalid Login Details");
                resp.sendRedirect("./login.jsp");
                System.out.println("There was an issue logging in");
            }
        }catch (Exception ex)
        {
            System.out.println(ex.getMessage());
        }
    }

}
