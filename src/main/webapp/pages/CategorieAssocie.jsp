<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Gestion.css">
<style>
.link { color: rgb(255, 255, 255) }
.link:hover { color: rgb(255, 255, 255); }
</style>
</head>
<body>

<h1> Categorie associee</h1>
<table>
<tr>
	<td>ID</td>
	<td>Nom</td>
	<td>Description</td>
</tr>
<tr>
	<td>${c.idCategorie}</td>
	<td>${c.nomCategorie}</td>
	<td>${c.description}</td>
</tr>
	

</table>
<br>
<br>
<a class=link href="${pageContext.request.contextPath}/gestionAdmin/P">Retour gestion produits</a>
</body>
</html>