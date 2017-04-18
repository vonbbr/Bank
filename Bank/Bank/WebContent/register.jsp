<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles/styles.css" rel="stylesheet" type="text/css">
<link href="styles/form.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="section-1">
		<div class="nav-header">
			<div class="nav-bar-fl-rt">
				<div class="nav-bar">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="register.jsp">Register</a></li>
						<li>Banking</li>
					</ul>
				</div>
			</div>
			<div class="welcome-header">
				<h2>Welcome to First National Bank</h2>
			</div>
		</div>
	</div>

	<div class="registration-section">
		<form class="register-form" action="Register" method="post">
  			<div class="form-group">
  			  <label for="email">Email address</label>
  			  <input type="email" class="form-control" id="email" name="email" placeholder="Email">
  			</div>
  			<div class="form-group">
  			  <label for="firstName">First Name</label>
  			  <input type="text" class="form-control" id="firstname" name="firstName" placeholder="First Name">
  			</div>
  			<div class="form-group">
  			  <label for="lastName">Last Name</label>
  			  <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name">
  			</div>
  			<div class="form-group">
  			  <label for="middleName">Middle Name</label>
  			  <input type="text" class="form-control" id="middleName" name="middleName" placeholder="Middle Name">
  			</div>
  			<div class="form-group">
  			  <label for="password">Password</label>
  			  <input type="password" class="form-control" id="password" name="password" placeholder="Password">
  			</div>
  			<div class="form-group">
  			  <label for="confirm">Confirm Password</label>
  			  <input type="password" class="form-control" id="confirm" name="confirm" placeholder="Password">
  			</div>
  			<c:if test="confirm == password">
  				<p>Make sure you're passwords match</p>
  			</c:if>
  			<hr> <!-- ************** ADDRESS FORM *****************-->
  			<h4>Address Information</h4>
  			<div class="form-group">
  			  <label for="street">Street</label>
  			  <input type="text" class="form-control" id="street" name="street" placeholder="Street">
  			</div>
  			<div class="form-group">
  			  <label for="city">City</label>
  			  <input type="text" class="form-control" id="city" name="city" placeholder="City">
  			</div>
  			<div class="form-group">
  			  <label for="state">State</label>
  			  <input type="text" class="form-control" id="state" name="state" placeholder="State">
  			</div>
  			<div class="checkbox">
  			  <label>
  			    <input type="checkbox"> Agree to terms and conditions
  			  </label>
  			</div>
  			
  			<button type="submit" class="submit-btn">Submit</button>
			
		</form>
	</div>

	<!--
	<div class="section-2">
		<div class="login-sec">
			<div class="login-container">
				<div class="login-entry">
					<form class="login-form" action="" method="post">	
						<div class="login">
				 			<Label for="username">Username</Label>
				 			<input type="text" id="username" class="username" 
				 			placeholder="Username">
				 		</div>
				 		<div class="login">
				 			<Label for="password">Password</Label>
				 			<input type="password" id="password" class="password" placeholder="Password">
				 		</div>
				 		<label class="button">
				 			<button type="submit" class="btn btn-default">Enter</button>
				 		</label>
					</form>
				</div>
			</div>
			

		</div>
	</div> -->
	<div class="section-3">

	</div>
	<div class="section-4">

	</div>
	<div class="section-5">

	</div>
	<footer>
	</footer>
</body>
</html>