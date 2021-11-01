<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>New Dojo</title>
	</head>
	<body>
		<form:form action="/dojos/new" method="POST" modelAttribute="dojo">
			<p>
				<form:label path="name">Name</form:label>
				<form:input path="name"/>
				<form:errors path="name"/>
			</p>
			<button type="submit">Add Dojo</button>
		</form:form>
		 
	</body>
</html>