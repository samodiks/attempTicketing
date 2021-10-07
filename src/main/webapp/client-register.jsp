<%@ page import="enumeration.Gender" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 20-Sep-21
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Ticketing</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style>
        input[type=text], select {
            width: 100%;
            padding: 8px 8px;
            margin: 8px 0;
        " + display: inline-block;
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
            background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
            alignment: center;
            margin: 5px;
        }
    </style>
    <jsp:include page="inc/navbar.jsp"/>
</head>
<body>
<% List<Gender> genderList = Arrays.asList(Gender.values());%>
<h3 style="margin: 5px;">Online Ticketing</h3>
<div class="container-fluid ">
    <div class="row">
        <div class="col-md-3">
            <jsp:include page="inc/sidebar.jsp"/>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Client Registration</div>
                <div class="card-body">
                    <form action="./client-register" method="POST">
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="idNo" align="right">ID Number</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" id="idNo" name="idNo" placeholder="Enter ID Number ... i.e. 12345678">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="cname" align="right">Client Name</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" id="cname" name="clientName" placeholder="Client  name..i.e. Samuel Odikor">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="email" align="right">Email Address</label></div>
                            <div class="col-md-8">
                                <input type="text" id="email" name="Email Address" placeholder="someone@domain.com">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2">
                                <label for="address" align="right">Client Address</label></div>
                            <div class="col-md-8">
                                <input type="text" id="address" name="clientAddress" placeholder="Client  Address..i.e. Amagoro">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="gender" align="right">Gender</label></div>
                            <div class="col-md-8">
                                <select id="gender" name="gender">
                                    <option value="">-- Select Gender --</option>
                                    <% for(Gender gender:genderList)
                                    {%>
                                    <option value="<%=gender.name()  %>"><%=gender.getDisplayName()%></option>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2 col-md-offset-2"><label for="dob" align="right">Date of Birth</label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" id="dob" name="dob" placeholder="Date of Birth..i.e. 01/01/0000">
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-sm-8"><input type="submit" value="Submit" class="btn btn-block"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3">

        </div>
    </div>
</div>
</body>
<jsp:include page="inc/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" interity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</html>