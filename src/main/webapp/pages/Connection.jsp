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
  <h1>Connection</h1>
        
    <form:form methode="POST" action="traiterAuth">
		    Login : <input type="text" name ="username"/>
		    Password: <input type="password" name="password"/>
	  	  <input type="submit" value="Valider">
	  </form:form>

	      <c:if test="${param.error!=null}">
		      Login pass incorrect
	      </c:if>
	      <c:if test="${param.logout!=null}">
		      Vous etes deconnectes
	      </c:if>

        <br>
        Nouveau ici? 
      <a class="nav-item nav-link" href="${pageContext.request.contextPath}/frontEnd/inscription">Incription</a>
 
      <br> 
    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/frontEnd/">Retour accueil</a>

</body> 
</head>