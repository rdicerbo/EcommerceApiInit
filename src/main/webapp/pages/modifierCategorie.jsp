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

<h1>Modification categorie</h1>


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

</body>
</html>