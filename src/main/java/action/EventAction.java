package action;

import dao.EventDao;
import enumeration.EventStatus;
import enumeration.YesNo;
import model.Event;
import utility.Helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(
        name="Create Event",
        urlPatterns = "/create-event")
public class EventAction extends HttpServlet {
    Helper helper = new Helper();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        eventCreation(req, resp);
    }

    private void eventCreation(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Event event = new Event();
        event.setEventNo(req.getParameter("eventNo"));
        event.setEventId(req.getParameter("eventId"));
        event.setEventName(req.getParameter("eventName"));
        event.setEventVenue((req.getParameter("eventVenue")));
        try {
            event.setEventDate(new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("eventDate")));
        } catch (ParseException parseException) {
            parseException.printStackTrace();
        }
        event.setMaxCapacity(Integer.parseInt(req.getParameter("maxCapacity")));
        event.setEventStatus(EventStatus.ACTIVE);
        event.setUrl(req.getParameter("url"));
        event.setClientId(req.getParameter("clientId"));
        event.setDeleted(YesNo.NO);

        EventDao eventDao = new EventDao();
        if (eventDao.create(event)){
            eventDao.generateTicket(event);
            System.out.println("Event Creation  was successful");
            resp.sendRedirect("./home.jsp");
        }
        else{
            System.out.println("Insertion was unsuccessful");
            resp.sendRedirect("./app.jsp");
        }
    }
}