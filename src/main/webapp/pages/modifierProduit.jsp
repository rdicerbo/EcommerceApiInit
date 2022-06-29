<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/../../css/Gestion.css">
</head>

<body>
<h1>Modification produit</h1>

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

</body>
</html>