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
<script type="text/javascript" src="/../../js/Modifier.js"></script>
<style>
.link { color: rgb(255, 255, 255) }
.link:hover { color: rgb(255, 255, 255); }
</style>
</head>

<body>


<br>
<br>
<br>
<h1> PANIER: </h1>

<table class="text-center margin:auto">
<tr>
<td>ID</td>
<td>Produit</td>
<td>Image</td>
<td>Quantite</td>
<td>Modification</td>
<td></td>
<td></td>

</tr>
<c:forEach items= "${lignepanier}" var="lp">
	<tr>
	<td>${lp.idLignePanier}</td>
	<td>${lp.produit.libProduit}</td>
	<td><img src="${pageContext.request.contextPath}/${lp.produit.img}" style="height: 50px; width:100px;"></td>
	<td>${lp.quantite}</td>
	<td>
		<form methode="POST" action="${pageContext.request.contextPath}/frontEnd/ModifierProduitPanier">
			<table>
				<tr><input type="text" name="quantite" placeholder="Quantite"></tr>
				<td><input type="submit" value="Modifier quantite"></td>
				<td><input type="hidden" name="idLp" value="${lp.idLignePanier}"></td>
				<td><input type="hidden" name="id" value="${lp.produit.idProduit}"></td>
				
			</table>
		  </form>
	</td>
	<td><a class="link" href="SupprimerProduitPanier?id=${lp.idLignePanier}">Supprimer</a></td>
	</tr>
</c:forEach>

</table>

<br>
<br>

<a class="link" href="${pageContext.request.contextPath}/frontEnd/">Continuer achats</a>
<a class="link" href="${pageContext.request.contextPath}/gestionClient/AfficherPanier">Passer commande</a>

</body>

</html>