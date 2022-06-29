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

<h1> Ajout d'une categorie: </h1>

<form:form methode="POST" action="${pageContext.request.contextPath}/gestionAdmin/SaveCategorie" modelAttribute="c">
<form:hidden path="idCategorie"/>
	<table>
		<tr>
			<td><form:label path="nomCategorie" >Nom de la categorie</form:label></td>
			<td><form:input path="nomCategorie"/></td>
		</tr>
		<tr>
			<td><form:label path="description">Description</form:label></td>
			<td><form:input path="description"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
	</table>

</form:form>

<br>
<br>
<br>
<h1> Categories: </h1>
<table>
<tr>
<td>ID</td>
<td>Nom</td>
<td>Description</td>
<td></td>
<td></td>
<td></td>
</tr>
<c:forEach items= "${liste}" var="c">
	<tr>
	<td>${c.idCategorie}</td>
	<td>${c.nomCategorie}</td>
	<td>${c.description}</td>
	<td><a class="link" href="SupprimerCategorie?id=${c.idCategorie}">Supprimer</a></td>
	<td><a class="link" href="ModifierCategorie?id=${c.idCategorie}">Modifier</a></td>
	<td>
	<c:choose>
  		<c:when test="${c.produits!=null}">
    		<a class="link" href="ProduitAssocie?idCat=${c.idCategorie}">Produits</a>
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