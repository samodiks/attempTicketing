<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11-Sep-21
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="model.Client" %>
<%@ page import="dao.ClientDao" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Members</title>
    <jsp:include page="bootstrap/bootstrap_header.jsp"/>
    <jsp:include page="inc/navbar.jsp" />
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <jsp:include page="inc/sidebar.jsp"/>
        </div>
        <div class="col-md-8">
            <form class="form-inline" style="alignment: right;">
                <div class="form-group ">
                    <input type="text" id="search" onkeyup="searchTable()" class="form-control " name="search" placeholder="Type name here...">
                </div>
            </form>
            <table class="table table-hover" id ="client-list">
                <thead>
                <tr>
                    <th scope="col">ID Number</th>
                    <th scope="col">Client Name</th>
                    <th scope="col">Client Email</th>
                    <th scope="col">Client Address</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Date of Birth</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ClientDao clientDao = new ClientDao();
                    for (Client client:clientDao.viewAll()) {
                %>
                <tr>
                    <td><%=client.getClientId() %></td>
                    <td><%=client.getClientName() %></td>
                    <td><%=client.getEmail() %></td>
                    <td><%=client.getClientAddress() %></td>
                    <td><%=client.getGender() %></td>
                    <td><%=client.getDob() %></td>
               </tr>
                <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    function searchTable() {
        let input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("search");
        filter = input.value.toUpperCase();
        table = document.getElementById("client-list");
        tr = table.getElementsByTagName("tr");
        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
</body>
<jsp:include page="inc/footer.jsp"/>
</html>
