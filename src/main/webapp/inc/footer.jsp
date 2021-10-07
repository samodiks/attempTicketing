<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 17-Sep-21
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    @import url(https://fonts.googleapis.com/css?family=Alegreya+Sans:300);

    body {
        font-family: 'Alegreya Sans', sans-serif;
    }

    /* Sticky footer position and size
    -------------------------------------------------- */
    html {
        position: relative;
        min-height: 100%;
    }
    body {
        /* Margin bottom by footer height */
        margin-bottom: 300px;
    }
    .footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        /* Set the fixed height of the footer here */
        height: 300px;
    }

    /* Taller footer on small screens */
    @media (max-width: 567em) {
        body {
            margin-bottom: 400px;
        }
        .footer {
            height: 400px;
        }
    }

    /* Sticky footer style and color
    -------------------------------------------------- */
    footer {
        padding-top: 30px;
        background-color: #292c2f;
        color: #bbb;
    }

    footer a {
        color: #999;
        text-decoration:none;
    }

    footer a:hover, footer a:focus {
        color: #aaa;
        text-decoration:none;
        border-bottom:1px dotted #999;
    }

    footer .form-control {
        background-color: #1f2022;
        box-shadow: 0 1px 0 0 rgba(255, 255, 255, 0.1);
        border: none;
        resize: none;
        color: #d1d2d2;
        padding: 0.7em 1em;
    }

</style>
<footer class="footer">
<div class="card">
    <div class="card-body">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <h5><i class="fa fa-road"></i> www.tryTicketing.com</h5>
                    <div class="row">
                        <div class="col-6">
                            <ul class="list-unstyled">
                                <li><a href="">Available Events</a></li>
                                <li><a href="">View Upcoming events</a></li>
                                <li><a href="./client-register.jsp">Sign Up</a></li>
                                <li><a href="">Portfolio</a></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul class="list-unstyled">
                                <li><a href="">Documentation</a></li>
                                <li><a href="">Support</a></li>
                                <li><a href="">Legal Terms</a></li>
                                <li><a href="">About</a></li>
                            </ul>
                        </div>
                    </div>
                    <ul class="nav">
                        <li class="nav-item"><a href="" class="nav-link pl-0"><i class="fa fa-facebook fa-lg"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-github fa-lg"></i></a></li>
                        <li class="nav-item"><a href="" class="nav-link"><i class="fa fa-instagram fa-lg"></i></a></li>
                    </ul>
                    <br>
                </div>
                <div class="col-md-2">
                    <h5 class="text-md-right">Contact Us</h5>
                    <hr>
                </div>
                <div class="col-md-5">
                    <form>
                        <fieldset class="form-group">
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </fieldset>
                        <fieldset class="form-group">
                            <textarea class="form-control" id="exampleMessage" placeholder="Message"></textarea>
                        </fieldset>
                        <fieldset class="form-group text-xs-right">
                            <button type="button" class="btn btn-secondary-outline btn-lg">Send</button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</footer>
