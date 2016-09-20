<%@page import="java.util.ArrayList"%>
<%@page import="fi.softala.tunti2_tuntikirjaus.servletit.Kontrolleri"%>
<%@page import="fi.softala.tunti2_tuntikirjaus.luokat.Kayttaja"%>
<%@page import="fi.softala.tunti2_tuntikirjaus.luokat.KayttajaImpl"%>
<%@page import="fi.softala.tunti2_tuntikirjaus.luokat.Tunnit"%>
<%@page import="fi.softala.tunti2_tuntikirjaus.luokat.TunnitImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listaa tunnit</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


	
<div class="container">
<div class="col-sm-offset-1">
<h1>Tuntikirjanpito<button class="btn btn-default" type="button">Tuntikatselmointiin</button></h1>
</div>
<form class="form-horizontal">


 <div class="table-responsive"> 
  <table class="table table-bordered"> 
  <thead>
   <tr>
   <th class="col-sm-1">#</th>
   <th class="col-sm-1">P�iv�m��r�</th>
   <th class="col-sm-1">Tunnit</th>
   <th class="col-sm-3">Kuvaus</th>
   <th class="col-sm-1">Poista</th>
   </tr>
  </thead>
    <tbody>
    <tr>
    <th scope="row">1</th>
    <c:forEach items="${kayttajat}" var="klista">
    <c:forEach items="${klista.tunnit}" var="tunnit">
    <td><c:out value="${tunnit.paivamaara}"/></td>
    <td><c:out value="${tunnit.tuntien_maara}"/></td>
    <td><c:out value="${tunnit.kuvaus}"/></td>
    <td><button type="button" class="btn btn-default" aria-label="Left Align">
 		<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
		</button>
		</c:forEach>
		</c:forEach> 
	</td>
    </tr>
     <tr>
     <th scope="row">2</th>
     <td>Table cell</td>
     <td>Table cell</td>
     <td>Table cell</td> 
     <td><button type="button" class="btn btn-default" aria-label="Left Align">
 		 <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
 	 </td> 
  	 </tr>
        <tr>
        <td>Yhteens�</td>
        <td></td>
        <td>xxx</td></tr>
       </tbody>
   </table>
  </div> 
  </form>
 </div>
 
</body>
</html>