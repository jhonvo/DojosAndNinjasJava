<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><c:out value="${dojo.name}"/>'s Details</title>
	</head>
	<body>
		<table>
			<thead>
				<tr>
					<th>
						First Name
					</th>
					<th>
						Last Name
					</th>
					<th>
						Age
					</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ninja" items="${dojo.ninjas}">
					<tr>
						<td>
							<c:out value="${ninja.firstName}"/>
						</td>
						<td>
							<c:out value="${ninja.lastName}"/>
						</td>
						<td>
							<c:out value="${ninja.age}"/>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>