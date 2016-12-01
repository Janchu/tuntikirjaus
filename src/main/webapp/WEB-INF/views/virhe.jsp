<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<sec:authorize access="isAuthenticated()">
	<c:redirect url="tunnit/lista" />
</sec:authorize>


<!-- Metatiedot -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Virhe - Tuntikirjanpito</title>
</head>

<body>
	<h3>Tapahtui virhe!</h3>
	
	<a href="${pageContext.request.contextPath}/logout">Kirjaudu ulos päästäksesi takaisin alkuun</a>
</body>
</html>