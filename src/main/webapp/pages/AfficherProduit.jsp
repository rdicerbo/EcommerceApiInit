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

<h1> Ajout d'un produit: </h1>
<form:form methode="POST" action="${pageContext.request.contextPath}/gestionAdmin/SaveProduit" enctype="multipart/form-data" modelAttribute="p">
<form:hidden path="idProduit"/>
	<table>
		<tr>
			<td><form:label path="libProduit" >Nom du produit</form:label></td>
			<td><form:input path="libProduit"/></td>
		</tr>
		<tr>
			<td><form:label path="quantite" >Quantite</form:label></td>
			<td><form:input path="quantite"/></td>
		</tr>
		<tr>
			<td>Image</td>
			<td><input type="file" name="file"/></td>
		</tr>
		<tr>
			Categorie: <select name="categorie">
				<c:forEach items="${listec}" var="c">
					<option value="${c.idCategorie}">${c.nomCategorie}</option>
				</c:forEach>
			</select>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
	</table>

</form:form>


<br>
<br>
<br>
<h1> Produits: </h1>

<table class="text-center margin:auto">
<tr>
<td>ID</td>
<td>Nom</td>
<td>Image</td>
<td>Quantite</td>
<td></td>
<td></td>
<td></td>

</tr>
<c:forEach items= "${liste}" var="c">
	<tr>
	<td>${c.idProduit}</td>
	<td>${c.libProduit}</td>
	<td><img src="${pageContext.request.contextPath}/${c.img}" style="height: 50px; width:100px;"></td>
	<td>${c.quantite}</td>
	<td><a class="link" href="SupprimerProduit?id=${c.idProduit}">Supprimer</a></td>
	<td><a class="link" href="ModifierProduit?id=${c.idProduit}">Modifier</a></td>
	<td><a class="link" href="CategorieAssocie?idCat=${c.categorie.idCategorie}">Categorie</a></td>
	</tr>
	
</c:forEach>

</table>

<br>
<br>

<a class="link" href="${pageContext.request.contextPath}/gestionAdmin/pageAdmin">Retour page accueil</a>

</body>
</html>