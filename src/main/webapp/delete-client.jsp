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
    <title>Delete client</title>
</head>
<body>
    <form action="/delete-client" method="post">
        <div class="row">
            <div class="col-md-4">
                <label>Client ID</label>
            </div>
            <div class="col-md-8">
                <input type="text" name="clientId" value="" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <label>Client Name</label>
            </div>
            <div class="col-md-8">
                <input type="text" name="clientName" value="" />
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
