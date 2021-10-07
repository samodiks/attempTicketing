package unusedActions;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(
        name="Event List",
        urlPatterns = "/")
public class EventListAction extends HttpServlet {
   /* @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EventDao eventDao = new EventDao();

        List<Event> eventList = eventDao.viewAll();
        PrintWriter printWriter = resp.getWriter();
        getEventList(eventList, printWriter);
    }*/

  /*  private void getEventList(List<Event> eventList, PrintWriter printWriter) {
        HtmlTemplate navbarSidebar = new HtmlTemplate();
        printWriter.println(
                "<html>"+
                "<head>" +
                "    <title>List of Members</title>\n" +
                "   <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin=\"anonymous\"> " +
                "   <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">" +

                "    <jsp:include page=\"navbar.jsp\" />\n" +
                "       <style>\n" +
                "       input[type=text], select {\n" +
                "                                width: 100%;\n" +
                "                                padding: 8px 8px;\n" +
                "                                margin: 8px 0;\n" +
                "                                display: inline-block;\n" +
                "                                border: 1px solid #ccc;\n" +
                "                                border-radius: 4px;\n" +
                "                                box-sizing: border-box;\n" +
                "                            }\n" +
                "                            input[type=submit] {\n" +
                "                                width: 100%;\n" +
                "                                background-color: #4CAF50;\n" +
                "                                color: white;\n" +
                "                                padding: 10px 10px;\n" +
                "                                margin: 8px 10px;\n" +
                "                                border: none;\n" +
                "                                border-radius: 4px;\n" +
                "                                cursor: pointer;\n" +
                "                            }" +
                "                            input[type=submit]:hover {\n" +
                "                                background-color: #45a049;\n" +
                "                            }" +
                "                            div {" +
                "                                border-radius: 5px;\n" +
                 "                               background-color: #f2f2f2;\n"+
                "                                padding: 8px 5px;\n" +
                "                            }\n" +
                "                            body{\n" +
                "                                background: #007bff;\n" +
                "                                background: linear-gradient(to right, #0062E6, #33AEFF);\n" +
                "                                 Link to your background image using in the property below!" +
                "                                background: scroll center url('https://source.unsplash.com/WEQbe2jBg40/414x512');\n" +
                "                                background-size: cover;\n" +
                "                                alignment: center;\n" +
                "                                margin: 5px;\n" +
                "                            }\n" +
                "                        </style>\n" +
                navbarSidebar.getNavbar() +
                "</head>\n" +
                "<body>\n" +
                "<div class=\"container-fluid\">\n" +
                "    <div class=\"row\">\n" +
                "        <div class=\"col-md-4\">\n" +
                navbarSidebar.getSidebar() +
                "        </div>\n"+
                "        <div class=\"col-md-8\">");

            printWriter.print(
                    "<div class=\"row\">");
            for (Event event: eventList){
            printWriter.print(
                    "<div class=\"col-md-4\">" +
                    "<div class=\"card\">" +
                    "<div class=\"card-header\">" );
            printWriter.println(event.getEventName());
            printWriter.println(
                    "</div>" +
                    "<div class=\"card-body\">" +
                    "<center><img src=\""+event.getUrl()+"\" width=\"150\" height=\"130\"><center><br>");
            printWriter.println("Event Venue: "+event.getEventVenue()+"<br>");
            printWriter.println(
                    "<a href =\"ticket-list?id="+ event.getEventNo()+"\">View Tickets</a>"+"<br>" +
                    "</div>" +
                "</div>" +
            "</div>");
        }
        printWriter.print("</div>" +
                "    </div>" +
                "</div>" +
            "</body>" + "<hr>" +
        navbarSidebar.getPageFooter()+
        "</html>");
    }*/
}
