<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">

</head>
<body>

<%-- <img alt="asd" src="<c:url value="resources/images/photo.jpg" />"> --%>

	<div class="container mt-4">

		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Complex Form</h3>
						<div class="alert alert-danger" role="alert">
							
						<form:errors path="student.*"></form:errors>	
						</div>
						<form action="processform" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									name="email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>

							<div class="form-group">
								<label for="id">Your ID</label> <input type="text"
									class="form-control" id="id" aria-describedby="emailHelp"
									placeholder="Enter id" name="id">

							</div>

							<div class="form-group">
								<label for="dob">DOB</label> <input type="text"
									class="form-control" id="dob" aria-describedby="emailHelp"
									placeholder="dd/mm/yyyy" name="dob">

							</div>

							<div class="form-group">
								<label for="exampleFormControlSelect2">Select Courses</label> <select
									multiple class="form-control" id="exampleFormControlSelect2"
									name="courses">
									<option>Java</option>
									<option>C++</option>
									<option>Python</option>
									<option>C</option>
									<option>JavaScript</option>
								</select>
							</div>

							<div class="form-group">
								<span>Select Gender</span>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="gender1" value="male"> <label
										class="form-check-label" for="gender1"> Male </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="gender2" value="female"> <label
										class="form-check-label" for="gender2"> Female</label>
								</div>
							</div>

							<div class="form-group">
								<label for="">Select Type</label> <select class="form-control"
									id="type" name="type">
									<option value="oldstudent">Old Student</option>
									<option value="newstudent">New Student</option>
								</select>

							</div>

							<div class="card">
								<div class="card-body">
									<p>Your Address</p>

									<div class="form-group">
										<input type="text" name="address.street" class="form-control"
											placeholder="Enter Street" />
									</div>
									<div class="form-group">
										<input type="text" name="address.city" class="form-control"
											placeholder="Enter city" />
									</div>

								</div>
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>

							</div>

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
		
	<script type="text/javascript" src="<c:url value="/resources/js/script.js"/>"></script>
</body>
</html>