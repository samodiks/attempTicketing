<%@ page import="model.TicketEvent" %>
<%@ page import="dao.TicketDao" %>
<%@ page import="model.CartItem" %>
<%@ page import="model.CartItem" %>
<%@ page import="model.Ticket" %>
<%@ page import="model.login.User" %>
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

        h3 {
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
            CartItem cart = new CartItem();
            cart.setTicketNo(request.getParameter("id"));
        %>
        <div class="col-md-7">
            <div class="card">
                <div class="card-header">Online tryTicketing Cart</div>
                <div class="card-body">

                    <table class="table table-borderless">
                        <tbody>
                        <tr>
                            <th scope="col">Ticket Number</th>
                            <th scope="col">Ticket Price</th>
                            <th scope="col">Action</th>
                        </tr>

                        <% User user = (User) request.getSession().getAttribute("username");

                            for (Ticket carts : ticketDao.getFromCart(user)) {%>
                        <tr>
                            <td scope="col"><%=carts.getTicketNo()%>
                            </td>
                            <td scope="col"><%=carts.getTicketPrice()%>
                            </td>
                            <td scope="col"><a href="delete-cart?ticketNo=<%=carts.getTicketNo()%>" role="button"
                                               class="btn btn-danger">Remove</a></td>
                        </tr>
                        <%}%>
                        <tr>
                            <td>Total Cost:</td>
                            <td><%=ticketDao.getTotalTicketPrice(user)%>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td><a href="./purchase-ticket" role="button">Purchase</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>