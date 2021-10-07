package utility;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Connection;

public class AppBootstrapListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {

        try {
            Connection conn = DbSource.getInstance().getConnection();

            ServletContext sc = sce.getServletContext();
            sc.setAttribute("mysqlConn", conn);

        } catch (Exception ex) {
            ex.printStackTrace();

        }

    }

    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext sc = sce.getServletContext();

        if (sc.getAttribute("mysqlConn") != null){
            Connection conn = (Connection) sc.getAttribute("mysqlConn");
            try {
                conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }
}
