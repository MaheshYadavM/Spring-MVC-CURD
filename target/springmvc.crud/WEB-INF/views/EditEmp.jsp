<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<%@taglib	prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-3">

		<h1>Edit Employee Form</h1>
		<form action="updateEmp" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="id">Id</label> <input type="text"
							value="${employee.id}" class="form-control" id="id" name="id"
							readonly="readonly">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							value="${employee.name }" class="form-control" id="name"
							name="name" placeholder="Enter Name">
					</div>
				</div>
				</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="position">Position</label> <select
							 class="form-control" id="position"
							value="${employee.position }" name="position"
							>
							
							<option value="Java Developer">Java Developer</option>
							<option value="Phyton Developer">Python Developer</option>
							<option value="IOS Developer">IOS Developer</option>
							<option value="UI Developer">UI Developer</option>
							<option value="Business Analyst">Business Analyst</option>
							<option value="HumanResourcer">Human Resourcer</option>
							
							</select>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="salary">Salary</label> <input type="number"
							value="${employee.salary }" class="form-control" id="salary"
							name="salary" placeholder="Enter Salary">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address"> ${employee.address } </textarea>
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>
</body>
</html>