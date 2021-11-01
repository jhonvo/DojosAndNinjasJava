<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>New Ninja</title>
	</head>
	<body>
		<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
			<p>
				<form:label path="dojo">Dojo:</form:label>
				<form:select path="dojo">
					<c:forEach var="dojo" items="${dojos}">
						<form:option value="${dojo.id}"><c:out value="${dojo.name}"/></form:option>
					</c:forEach>
				</form:select>
				<form:errors path="dojo"/>
			</p>
			
			<p>
				<form:label path="firstName">First Name:</form:label>
				<form:input path="firstName"/>
				<form:errors path="firstName"/>
			</p>
			
			<p>
				<form:label path="lastName">Last Name:</form:label>
				<form:input path="lastName"/>
				<form:errors path="lastName"/>
			</p>
			
			<p>
				<form:label path="age">Age:</form:label>
				<form:input path="age" type="number"/>
				<form:errors path="age"/>
			</p>
			
			<button type="submit">Add Ninja</button>
		</form:form>
		 
	</body>
</html>