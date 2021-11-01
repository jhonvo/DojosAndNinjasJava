<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><c:out value="${dojo.name}"/>'s Details</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<body class="bg-secondary bg-opacity-50">
		<div class="container col-md-8  mx-auto bg-white p-5 rounded mt-5">
		<p class="  display-6"><c:out value="${dojo.name}"/> Details</p>
		<table class="table table-primary  table-striped table-hover">
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
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>