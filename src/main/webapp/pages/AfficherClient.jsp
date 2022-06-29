<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion Categories</title>
<link rel="stylesheet" type="text/css" href="/../../css/Gestion.css">
<style>
.link { color: rgb(255, 255, 255) }
.link:hover { color: rgb(255, 255, 255); }
</style>
</head>

<body>
<br>
<br>
<br>
<h1> Client: </h1>
<table>
<tr>
<td>ID</td>
<td>Nom</td>
<td>Prenom</td>
<td></td>
<td></td>
<td></td>
</tr>
<c:forEach items= "${liste}" var="c">
	<tr>
	<td>${c.id}</td>
	<td>${c.nom}</td>
	<td>${c.prenom}</td>
	<td>
	<c:choose>
  		<c:when test="${c.commandes!=null}">
    		<a class="link" href="CommandesAssocie?idUtilisateur=${c.id}">Commandes</a>
  		</c:when>
  		<c:otherwise>
    		<p>X</p>
  		</c:otherwise>
	</c:choose>
	</td>

	</tr>
	
</c:forEach>

</table>

<br>
<br>


<a class="link" href="${pageContext.request.contextPath}/gestionAdmin/pageAdmin">Retour page accueil</a>

</body>
</html>