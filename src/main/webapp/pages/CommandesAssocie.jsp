<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/../../css/Gestion.css">
<style>
.link { color: rgb(255, 255, 255) }
.link:hover { color: rgb(255, 255, 255); }
</style>
</head>
<body>


<h1>Commandes associes</h1>
<table>
<tr>
<td>ID</td>
<td>Date de commande</td>
<td>Lignes de commande</td>

</tr>
<c:forEach items= "${listeC}" var="c">
	<tr>
	<td>${c.idCommande}</td>
	<td>${c.dateCommande}</td>
	<td>${c.ligneCommandes}</td>
	</tr>
	
</c:forEach>

</table>
<br>
<br>
<a class=link href="${pageContext.request.contextPath}/gestionAdmin/Commandes">Retour gestion categories</a>
</body>
</html>