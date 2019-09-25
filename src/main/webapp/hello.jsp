<%@ page import="com.codegym.server.CustomerServer" %>
<%@ page import="com.codegym.model.Customer" %>
HELLO WORLD
<%!
    CustomerServer customerServer = new CustomerServer();
%>
Co <%= customerServer.getCount()%> khach hang.
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Date</th>
        <th>Address</th>
    </tr>

<% for (Customer c : customerServer.fillAll()) {%>
<tr>
    <td><%= c.getId()%></td>
    <td><a href="/info.jsp?id=<%=c.getId()%>"><%= c.getName()%></a></td>
    <td><%= c.getDate()%></td>
    <td><%= c.getAddress()%></td>
</tr>
<%}%>
</table>