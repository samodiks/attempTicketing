<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 18-Sep-21
  Time: 07:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Ticketing</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background: #007bff;
            background: linear-gradient(to right, #0062E6, #33AEFF);
        }

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
            padding: 8px 5px;
        }

        body {
            background: #007bff;
            background: linear-gradient(to right, #0062E6, #33AEFF);
            alignment: center;
            margin: 5px;
        }
    </style>
</head>
<jsp:include page="inc/navbar.jsp"/>
<body>
<h3 style="margin: 5px;">Online Ticketing</h3>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <jsp:include page="inc/sidebar.jsp"/>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Events Creation</div>
                <div class="card-body">
                    <form action="./create-event" method="POST">
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="eventNo" align="right">Event Number</label></div>
                            <div class="col-md-8"><input type="text" id="eventNo" name="eventNo" placeholder="Enter Event Number ... i.e. 12345678"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="eventId" align="right">Event ID</label>
                            </div>
                            <div class="col-md-8"><input type="text" id="eventId" name="eventId" placeholder="Enter Event ID ... i.e. World U20 "></div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="eventName" align="right">Event Name</label></div>
                            <div class="col-md-8"><input type="text" id="eventName" name="eventName" placeholder="Event Name..i.e. World Under 20 Championship"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="venue" align="right">Event Venue</label></div>
                            <div class="col-md-8"><input type="text" id="venue" name="eventVenue" placeholder="Tokyo Japan"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="eventDate" align="right">Event Date</label></div>
                            <div class="col-md-8"><input type="text" id="eventDate" name="eventDate" placeholder="yyyy-MM-dd (0000-00-00)"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="capacity" align="right">Maximum Capacity</label></div>
                            <div class="col-md-8"><input type="text" id="capacity" name="maxCapacity" placeholder="150"></div>
                        </div>

                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="url" align="right">Image URL</label></div>
                            <div class="col-md-8">
                                <input type="text" id="url" name="url" placeholder="https://<image url>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="clientId" align="right">Client ID</label></div>
                            <div class="col-md-8">
                                <input type="text" id="clientId" name="clientId" placeholder="3141314">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8"><input type="submit" value="Submit" class="btn btn-block"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<jsp:include page="inc/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>