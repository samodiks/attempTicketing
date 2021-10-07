<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 16-Sep-21
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>" +
"
<head>" +
    "<title>Purchase Ticket</title>" +
    "
    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\"
          integrity=\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\"
          crossorigin=\"anonymous\">
    " +
    "
    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\"
          integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\"
          crossorigin=\"anonymous\">
    " +
    "
</head>
" +
htmlTemplate.getNavbar() +
"
<body>" +
"
<div class=\"container-fluid\">" +
    "
    <div class=\"row\">" +
        "
        <div class=\"col-md-3\">" +
            "
        </div>
        " +
        <div class=\"col-md-6\">" );
            for (TicketEvent ticketEvent : ticketEventList) {
            dis.println("
            <div class=\"card\">" +
                "
                <div class=\"container-fluid\">" +
                    "
                    <div class=\"row\">" +
                        "
                        <div class=\"col-md-3\">" +
                            "
                            <div class=\"card-body\">"+
                               " <img src=\" + ticketEvent.getUrl() +\"  width=\"100%\"> " +
                                "
                            </div>
                            " +
                            "
                        </div>
                        " +
                        "
                        <div class=\"col-md-9\">" +
                            "
                            <div class=\"card-body\">" +
                                "
                                <div class=\"row\">" +
                                    "
                                    <div class=\"col-md-12>" +
                                        " <h3> Ticket Name:" + ticketEvent.getEventName() + "</h3>" +
                                        " <h3> Venue: " + ticketEvent.getEventDate() + "</h3>" +
                                        "
                                    </div>
                                    " +
                                    "
                                </div>
                                " +
                                "
                                <div class=\"row\">" +
                                    "
                                    <div class=\"col-md-6>" +
                                        " <h3> Ticket level: " + ticketEvent.getTicketLevel() + "</h3>" +
                                        "
                                    </div>
                                    " +
                                    "
                                    <div class=\"col-md-6>" +
                                        " <h3> Cost: " + ticketEvent.getTicketPrice() + "</h3>" +
                                        "
                                    </div>
                                    " +
                                    "
                                </div>
                                " +
                                "
                                <div class=\"row\">" +
                                    "
                                    <div class=\"col-md-6>" +
                                        " <h3>" + ticketEvent.getEventVenue() + "</h3>" +
                                        "
                                    </div>
                                    " +
                                    "
                                    <div class=\"col-md-6>" +
                                        " <h3>" + ticketEvent.getTicketNo() + "</h3>");

                                        dis.println("
                                    </div>
                                    " +
                                    "
                                </div>
                                " +
                                "
                            </div>
                            " +
                            "
                            <div class=\"row\">" +
                                "
                                <div class=\"col-md-6>" +
                                    "
                                    <button>get Ticket</button>
                                    " +
                                    "
                                </div>
                                " +
                                "
                            </div>
                            " +
                            "
                        </div>
                        " +
                        "
                    </div>
                    " +
                    "
                </div>
                " +
                "
            </div>
            ");
            }
            dis.println("
        </div>


    </div>
    " +
    "
</div>
" +
"
</body>
" +
"
</html>
