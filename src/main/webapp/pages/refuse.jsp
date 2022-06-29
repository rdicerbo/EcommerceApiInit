<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Vous n'avez pas le droit d'acceder à la page
<br>

<form:form method="post" action="${pageContext.request.contextPath}/logout">
	<input type="submit" value="deconnexion">
</form:form>
</body>
</html>