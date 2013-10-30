<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<% AttributePrincipal user = (AttributePrincipal) request.getUserPrincipal(); %>
<c:set value="user" var="user"/>
<html>
<body>
<h2>Hello ${pageContext.request.userPrincipal.name} <c:out value="${user.name}" /></h2>
<%= user.getName() %>
<h3>Attributes:</h3>
<p>
<c:forEach var="attribute" items="${user.attributes}">
<c:out value="${attribute.key}"/>
<c:out value="${attribute.value}"/>
<br/>
</c:forEach>
<p>
</body>
</html>
