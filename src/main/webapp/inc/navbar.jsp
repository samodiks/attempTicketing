<%@ page import="model.login.User" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11-Sep-21
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="./home.jsp"><span class="fa fa-home"> tryTicketing</span></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="./home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./createEvent.jsp">Events</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">Ticket Information</a>
            </li>
            <li class="nav-item" align="right">
                <a class="nav-link " href="./user-registration.jsp">Register</a>
            </li>
        </ul>
    </div>
    <div>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="./cart.jsp" role="button">View Cart</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./login.jsp">Sign Out</a>
            </li>
            <li class="nav-item">

                <%User user=(User)session.getAttribute("username");%>
                <p class="nav-link"> Signed in as  <%=user.getUsername()%></p>
            </li>
        </ul>
    </div>
</nav>