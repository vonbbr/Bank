<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles/styles.css" rel="stylesheet" type="text/css">
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
	<div class="section-2">
		<div class="login-sec">
			<div class="login-container">
				<div class="login-entry">
					<form class="login-form" action="Login" method="post">	
						<div class="login">
				 			<Label for="username">Username</Label>
				 			<input type="text" name="username" id="username" class="username" 
				 			placeholder="Username">
				 		</div>
				 		<div class="login">
				 			<Label for="password">Password</Label>
				 			<input type="password" name="password" id="password" class="password" placeholder="Password">
				 		</div>
				 		<label class="button">
				 			<button type="submit" class="btn btn-default">Enter</button>
				 		</label>
					</form>
				</div>
			</div>
			

		</div>
	</div>
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