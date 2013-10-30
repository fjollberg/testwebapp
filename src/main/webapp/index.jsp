<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<% AttributePrincipal user = (AttributePrincipal) request.getUserPrincipal(); %>
<c:set value="user" var="user"/>
<html>
<body>
<h2>Hello <%= user.getName() %></h2>
<h3>Attributes</h3>
<table style="border: none">
<% for(String key : user.getAttributes().keySet()) { %>
<tr>
<td><%= key %></td><td><%= user.getAttributes().get(key) %></td>
</tr>
<% } %>
</table>
</body>
</html>
