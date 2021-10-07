<%@ page import="model.Event" %>
<%@ page import="dao.EventDao" %>
<%@ page import="model.login.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 17-Sep-21
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>List of Events</title>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
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
              background: #007bff;
              background: linear-gradient(to right, #0062E6, #33AEFF);
              background: scroll center url('https://source.unsplash.com/WEQbe2jBg40/414x512');
              background-size: cover;
              alignment: center;
              margin: 5px;
          }
      </style>
</head>
<body>
<% User username = (User) request.getSession().getAttribute("username");%>
<jsp:include page="inc/navbar.jsp"/>
    <div class="container-fluid">
        <div class="row">
               <div class="col-md-4">
                   <jsp:include page="inc/sidebar.jsp"/>
               </div>
               <div class="col-md-8">

            <div class="row">
               <%
                   EventDao eventDao = new EventDao();
                   for (Event event: eventDao.viewAll()){

                   %>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                           <%=event.getEventName()%>
                        </div>
                        <div class="card-body">
                            <div align="center"><img src="<%=event.getUrl()%>" width="100%" height="150"></div><br>
                               Event Venue: <%=event.getEventVenue()%><br>
                                <a href ="viewTickets.jsp?id=<%= event.getEventNo() %>">View Tickets</a><br>
                                </div>
                        </div>
                    </div>
               <% } %>
              </div>
             </div>
        </div>
    </div>
</body>
    <jsp:include page="inc/footer.jsp" />
</html>