<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 18-Sep-21
  Time: 06:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>
    <link rel="stylesheet" type="text/css" href="">
    <style>
       <jsp:include page="bootstrap/registerCSS.jsp"/>
    </style>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card flex-row my-5 border-0 shadow rounded-3 overflow-hidden">
                <div class="card-img-left d-none d-md-flex">
                    <!-- Background image for card set in CSS! -->
                </div>
                <div class="card-body p-4 p-sm-5">
                    <h5 class="card-title text-center mb-5 fw-light fs-5">Register</h5>
                    <%String sessionMsg = (String) session.getAttribute("user_reg");
                        PrintWriter dis= response.getWriter();
                        if (sessionMsg != null)
                            dis.println ("user_reg: " + sessionMsg + "<br/>");%>
                    <form action="./user-register" method="POST">
                        <div class="form-floating mb-3">
                            <label for="floatingInputUsername">Username</label>
                            <input type="text" class="form-control" id="floatingInputUsername" name="username"
                                   placeholder="myusername" required autofocus>
                        </div>
                        <div class="form-floating mb-3">
                            <label for="floatingInputEmail">Email address</label>
                            <input type="email" class="form-control" id="floatingInputEmail" name="email"
                                   placeholder="name@example.com">
                        </div>
                        <hr>
                        <div class="form-floating mb-3">
                            <label for="floatingPassword">Password</label>
                            <input type="password" class="form-control" id="floatingPassword" name="password"
                                   placeholder="Password">
                        </div>

                        <div class="form-floating mb-3">
                            <label for="floatingPasswordConfirm">Confirm Password</label>
                            <input type="password" class="form-control" id="floatingPasswordConfirm"
                                   placeholder="Confirm Password">
                        </div>
                        <div class="d-grid mb-2">
                            <button class="btn btn-lg btn-primary btn-login fw-bold text-uppercase" type="submit">
                                Register
                            </button>
                        </div>
                        <a class="d-block text-center mt-2 small" href="./login.jsp">Have an account? Sign In</a>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
