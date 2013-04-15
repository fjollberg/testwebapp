<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String user = request.getUserPrincipal().getName(); %>
<html>
<body>
<h2>Hello <%= user %></h2>
</body>
</html>
