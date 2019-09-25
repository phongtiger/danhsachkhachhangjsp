<%@ page import="com.codegym.model.Customer" %>
<%@ page import="com.codegym.server.CustomerServer" %>
<%
    long id = Long.parseLong(request.getParameter("id"));
    Customer customer = new CustomerServer().findOne(Integer.parseInt(String.valueOf(id)));
%>
<form>
    <legion>Customer Detail</legion>
    <table>
        <tr>
            <td>Name</td>
            <td><%=customer.getName()%></td>
        </tr>
        <tr>
            <td>Date</td>
            <td><%=customer.getDate()%></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><%=customer.getAddress()%></td>
        </tr>
    </table>
</form>
