<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jspf"%>
<%@ include file="navigation/homena.jspf"%>
<html xmlns:th="http://www.thymeleaf.org">

<head>
<title>Login page</title>
<style>
	body{
	text-align: center;
	font-size:30px;
	}
</style>
</head>

<body>
	<font color="green">${success}</font>
	<font color="red">${errorMessage }</font>
    <form:form action="/login" method="POST" modelAttribute="user">
        Username :
				<form:label path="username"></form:label>
				<form:input type="text" id="username" path="username"/>
				<form:errors path="username"/>
        		<br>
        Password : 
				<form:label path="password"></form:label>
				<form:input type="password" id="password" path="password"/>
				<form:errors path="password"/>
				<br>
        <input type="submit" value="Login"/>	  
    </form:form>
    <form action="/register">
	<input type="submit" value="Go to Registration page"/>
	</form>
</body>

</html>
<%@ include file="footer.jspf"%>