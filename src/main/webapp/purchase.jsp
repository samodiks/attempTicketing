<%@ page import="model.TicketEvent" %>
<%@ page import="dao.TicketDao" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 18-Sep-21
  Time: 08:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Purchase Ticket</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <style>
        div {
            border-radius: 5px;
            padding: 8px 5px;
        }

        body {
            background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
            background-size: cover;
            alignment: center;
            margin: 5px;
        }
        h3{
            font-style: oblique;
            font-family: "Lucida Console", "Courier New", monospace;
            font-size: 16px;
            color: brown;
        }
    </style>
    <jsp:include page="inc/navbar.jsp"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
        </div>
        <%
            TicketDao ticketDao = new TicketDao();
            TicketEvent ticketEvent = new TicketEvent();
            ticketEvent.setTicketNo(request.getParameter("id"));

            for (TicketEvent ticketEvents : ticketDao.getEventTicketByEventNo(ticketEvent)) {
        %>
        <div class="col-md-7">
            <div class="card">
                <div class="card-header">Online tryTicketing Cart</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="<%=ticketEvents.getUrl()%>" width="80%">
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2> <%=ticketEvents.getEventName()%> </h2>
                                    <h4> Date:<%=ticketEvents.getEventDate() +"  At "+ ticketEvents.getEventVenue()%></h4>
                                </div>
                            </div>
                          <%
                              //Get list of tickets added from the addToCart list
                             for( TicketEvent ticketEvent1:ticketDao.addToCart(ticketEvent))
                              {
                          %>
                            <div class="row">
                                <div class="col-md-4">
                                    <h3> Ticket level:</h3><h4> <%=ticketEvent1.getTicketLevel()%> </h4>
                                </div>
                                <div class="col-md-4">
                                    <h3> Ticket Number::</h3><h4> <%=" "+ ticketEvent1.getTicketNo()%></h4>
                                </div>
                                <div class="col-md-4">
                                    <h3> Cost: </h3><h4><%=" "+ ticketEvent1.getTicketPrice()%></h4>
                                </div>
                            </div>
                            <%}%>
                            <div class="row">
                                <a class="btn btn-block btn-success" href="./home.jsp" role="button"> Get this Ticket</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</div>
</body>
</html>