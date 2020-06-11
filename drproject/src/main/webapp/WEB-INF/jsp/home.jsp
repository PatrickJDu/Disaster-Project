<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
	html, body{
	height:100%;
	text-align: center;
	font-size:30px;
	}
	.leftNavbar{
	float:center;
	height:100%;
	font-size:24px;
	}
	table{
	margin-left:auto; 
    margin-right:auto;
	}
</style>

<meta charset="ISO-8859-1">
<title>Disaster Recovery page</title>
</head>
<body>

<div class="upperHeader">
	<h2>Disaster Recovery Application: Time card Submission</h2>
</div>
<div>
	<h2>Hi ${name}(ADMIN)</h2>
	<form action="/logout">
		<input type="submit" value="Sign out"/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
	</form>
</div>

<div class="leftNavbar">
<table>
	<tr>
		<td>
			<ul>
				<li><a href="/jobs">Job code Management</a></li>
				<li><a href="/machines">Machine Management</a></li>
				<li><a href="/timesheets">Timecard Approval</a></li>
			</ul>
		</td>
	</tr>
</table>
</div>

<div>

</div>
</body>
</html>