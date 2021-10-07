<%@ page import="model.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.TicketDao" %>
<%@ page import="model.CartItem" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 22-Sep-21
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<CartItem> cart_list = (ArrayList<CartItem>) session.getAttribute("cart-list");
    List<CartItem> cartProduct = null;
    if (cart_list != null) {
        TicketDao ticketDao = new TicketDao();
        cartProduct = ticketDao.getTicketDetail(cart_list);
        //double total = productDao.getTotalCartPrice(cart_list);
        //request.setAttribute("total", total);
        request.setAttribute("cart_list", cart_list);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<tbody>
<%

    if (cart_list != null) {
        for (CartItem ticketCart : cartProduct) {
%>
<tr>
    <td><%=ticketCart.getTicketNo()%></td>
    <td><%=ticketCart.getTicketLevel()%></td>
    <td><%= ticketCart.getTicketPrice()%></td>
    <td>
        <%--<form action="order-now" method="post" class="form-inline">
            <input type="hidden" name="id" value="<%= ticketCart.getTicketNo()%>" class="form-input">
            <div class="form-group d-flex justify-content-between">
                <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=ticketCart.getId()%>"><i class="fas fa-plus-square"></i></a>
                <input type="text" name="quantity" class="form-control"  value="<%=ticketCart.getQuantity()%>" readonly>
                <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=ticketCart.getId()%>"><i class="fas fa-minus-square"></i></a>
            </div>
            <button type="submit" class="btn btn-primary btn-sm">Buy</button>
        </form>--%>
    </td>
    <td><a href="remove-from-cart?id=<%=ticketCart.getTicketNo() %>" class="btn btn-sm btn-danger">Remove</a></td>
</tr>

<%
        }
    }%>
</tbody>
</body>
</html>
