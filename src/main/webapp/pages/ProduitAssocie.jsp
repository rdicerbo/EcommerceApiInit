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


<h1>Produits associ�s</h1>
<table>
<tr>
<td>ID</td>
<td>Nom</td>
<td>Image</td>
<td>Quantit�</td>

</tr>
<c:forEach items= "${listeP}" var="p">
	<tr>
	<td>${p.idProduit}</td>
	<td>${p.libProduit}</td>
	<td><img src="${pageContext.request.contextPath}/${p.img}" style="height: 50px; width:100px;"></td>
	<td>${p.quantite}</td>
	</tr>
	
</c:forEach>

</table>
<br>
<br>
<a class=link href="${pageContext.request.contextPath}/gestionAdmin/C">Retour gestion categories</a>
</body>
</html>