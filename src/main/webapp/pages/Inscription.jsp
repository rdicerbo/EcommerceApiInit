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
<h1>Inscription</h1>

<form:form methode="POST" action="${pageContext.request.contextPath}/frontEnd/saveUtilisateur" modelAttribute="u">
<form:hidden path="id"/>
	<table>
		<tr>
			<td><form:label path="nom" >Nom</form:label></td>
			<td><form:input path="nom"/></td>
		</tr>
		<tr>
			<td><form:label path="prenom" >Prenom</form:label></td>
			<td><form:input path="prenom"/></td>
		</tr>
		<tr>
			<td><form:label path="username" >Login</form:label></td>
			<td><form:input path="username"/></td>
		</tr>
		<tr>
			<td><form:label path="password" >Password</form:label></td>
			<td><form:input type="password" path="password"/></td>
		</tr>
		
	
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
	</table>

</form:form>
<br>
Deja inscrit? 
<a class="nav-item nav-link" href="/afficherlogin">Connection</a>

</body>
</html>