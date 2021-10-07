<%@ page import="model.Ticket" %>
<%@ page import="dao.TicketDao" %>
<%@ page import="model.TicketEvent" %>
<%--  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 18-Sep-21
  Time: 07:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Available Tickets</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style>
        input[type=text], select {
            width: 100%;
            padding: 8px 8px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 10px;
            margin: 8px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 8px 5px;
        }

        body {
            background: linear-gradient(to right, #0062E6, #33AEFF);
            /* Link to your background image using in the property below! */
            background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
            background-size: cover;
            alignment: center;
            margin: 5px;
        }
    </style>
    <jsp:include page="inc/navbar.jsp"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <jsp:include page="inc/sidebar.jsp"/>
        </div>
        <div class="col-md-8">
            <%
                TicketDao ticketDao = new TicketDao();
                Ticket ticket = new Ticket();
                ticket.setEventNo(request.getParameter("id"));
                System.out.println(ticketDao.getTicketByEventNo(ticket).size());
                if(ticketDao.getTicketByEventNo(ticket).size()<1){%>
                    <h2 class="text-danger">This Event is out of Tickets or ended already. check last booking date.</h2>
                <%} else{%>
            <table class="table table-hover">
            <thead>

                <tr>
                    <th scope="col">Ticket Number</th>
                    <th scope="col">Event Number</th>
                    <th scope="col">Ticket Level</th>
                    <th scope="col">Ticket Price</th>
                    <th scope="col">Ticket Status</th>
                    <th scope="col">Action</th>
                </tr>
                <%
                    for (Ticket tickets : ticketDao.getTicketByEventNo(ticket)) { %>
                <tr>
                    <td><%=tickets.getTicketNo()%></td>
                    <td><%=tickets.getEventNo()%></td>
                    <td><%=tickets.getTicketLevel()%></td>
                    <td><%=tickets.getTicketPrice()%></td>
                    <td><%=tickets.getTicketStatus()%></td>
                    <td><a href="./cart?ticketNo=<%=tickets.getTicketNo()%>&price=<%=tickets.getTicketPrice()%>&id=<%=tickets.getEventNo()%>">Add to Cart</a></td>
                </tr>
                <% }
                }%>
                </thead>
                <tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="inc/footer.jsp"/>
</body>
<hr>
</html>
