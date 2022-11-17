<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body>
<div class="container mt-3">

		<h1>Add Employee Form</h1>
		<form action="insertEmp" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter Name">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="position">Position</label> <select
							 class="form-control" id="position"
							name="position" >
							
							<option value="Java Developer">Java Developer</option>
							<option value="Phython Developer">Phython Developer</option>
							<option value="IOS Developer">IOS Developer</option>
							<option value="UI Developer">UI Developer</option>
							<option value="Business Analist">Business Analist</option>
							<option value="HR">HR</option>
							
							</select>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="salary">Salary</label> <input type="number"
							class="form-control" id="salary" name="salary"
							placeholder="Enter Salary">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="address">Address</label>
						<textarea class="form-control" id="address" name="address"
							rows="5" placeholder="Enter Address"> </textarea>
					</div>
				</div>
			</div>

			
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="empReport" class="btn btn-primary">Employee Details</a>
		</form>

	</div>
</body>
</html>