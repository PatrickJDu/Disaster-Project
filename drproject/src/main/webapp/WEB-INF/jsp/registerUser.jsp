<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jspf"%>
<%@ include file="navigation/homena.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<<<<<<< HEAD
<style>
	td{
	font-size: 24px
	}
	body{
	text-align: center;
	}
	table{
	margin-left:auto; 
    margin-right:auto;
	}
=======
<style type="text/css">
	
	button {
		padding: 10px;
	}
	.error {
		color: red;
		font-style: italic;
	}
	form {
		display: table;
	}
	form div {
		display: table-row;
	}
	label, input, span, select {
		display: table-cell;
		margin: 5px;
		text-align: left;		
	}
	input[type=text], input[type=password], select, textarea {
		width: 200px;
		margin: 5px;
	}

	form div div {
		display: table-cell;
	}	
>>>>>>> 2ac1101c6967aff6e92c2d1889c07810b025124d
</style>
</head>
<body>
<form:form action="/register" modelAttribute="user" method="post">
	<table>
		<tr>
			<td>Username</td>
			<td>
			<form:label path="username"></form:label>
				<form:input type="text" id="username" path="username"/>
				<form:errors path="username" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>
			<form:label path="password"></form:label>
				<form:input type="password" id="password" path="password"/>
				<form:errors path="password" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Full name</td>
			<td>
			<form:label path="name"></form:label>
				<form:input type="text" id="name" path="name"/>
				<form:errors path="name" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<form:select path="role">
				<form:option value="NONE" label="--- Select ---"/>
				<form:options items="${roles}"/>
				<form:errors path="role" cssClass="error"/>
			</form:select>
		</tr>
	</table>
	<input type="submit" value="Save" />
</form:form>
</body>
</html>
<%@ include file="footer.jspf"%>