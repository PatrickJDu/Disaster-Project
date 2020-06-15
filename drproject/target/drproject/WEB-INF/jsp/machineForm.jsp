<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jspf"%>
<%@ include file="navigation/adminna.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Machine Form</title>
<style>
	th, td{
	font-size: 24px
	}
	body{
	text-align: center;
	}
	table{
	margin-left:auto; 
    margin-right:auto;
	}
</style>
</head>
<body>
<h1>Machine Management</h1>
<form:form action="/machine/add_machine" modelAttribute="machine" method="post">
	<table>
		<tr>
			<th>Machine code: </th>
			<td>
				<form:label path="id"></form:label>
				<form:input type="text" id="id" path="id"/>
				<form:errors path="id"/>
			</td>
		</tr>
		<tr>
			<th>Description: </th>
			<td>
				<form:label path="description"></form:label>
				<form:input type="text" id="description" path="description"/>
				<form:errors path="description"/>
			</td>
		</tr>
		<tr>
			<th>Hourly Rate: </th>
			<td>
				<form:label path="hourlyrate"></form:label>
				<form:input type="text" id="hourlyrate" path="hourlyrate" />
				<form:errors path="hourlyrate"/>
			</td>
		</tr>
		<tr>
			<th>Max Hour per day: </th>
			<td>
				<form:label path="maxhourperday"></form:label>
				<form:input type="text" id="maxhourperday" path="maxhourperday"/>
				<form:errors path="maxhourperday"/>
			</td>
		</tr>
		<tr>
			<td>
					<input type="submit" value="Save" />	
			</td>
		</tr>
	</table>
	</form:form>
<form action="/machine/machines">
	<input type="submit" value="Go back to Machines"/>
</form>

<form action="/home">
	<input type="submit" value="Homepage"/>
</form>
</body>
</html>
<%@ include file="footer.jspf"%>