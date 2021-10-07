<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 26-Sep-21
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Event</title>
</head>
<body>
    <form action="/delete-event" method="post">
        <div class="row">
            <div class="col-md-4">
                <label>Event number</label>
            </div>
            <div class="col-md-8">
                <input type="text" name="eventNo" value="" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <label>Event Name</label>
            </div>
            <div class="col-md-8">
                <input type="text" name="eventNo" value="" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <label>Reason for Deletion</label>
            </div>
            <div class="col-md-8">
                <input type="textarea"  row="5" name="eventNo" value="" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">

            </div>
            <div class="col-md-8">
                <input type="submit" name="submit" value="Delete" class="btn btn-warning btn-block" />
            </div>
        </div>
    </form>
</body>
</html>
