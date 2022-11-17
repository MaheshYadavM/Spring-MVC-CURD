<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
</head>
<body>
	<div class="container mt-3">

		<h1>Add Employee Form</h1>
		<a href="addEmp" class="btn btn-primary"> Add Employee From</a>
		<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Position</th>
						<th scope="col">Salary</th>
						<th scope="col">Address</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${employee}">
						<tr>
							<td class="table-plus">${emp.id}</td>
							<td>${emp.name}</td>
							<td>${emp.position}</td>
							<td>${emp.salary}</td>
							<td>${emp.address}</td>

							<td><a href="editEmp/${emp.id}" class="btn btn-warning">
									Edit </a></td>
							<td><a href="deleteEmp/${emp.id}" class="btn btn-danger">
									Delete </a></td>
						</tr>

					</c:forEach>
				</tbody>
				<tr>
					<td><a href="addEmp" class="btn btn-danger">Back</a></td>
				</tr>
			</table>
			
			
		</div>
	</div>

</body>
</html>