<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.users.User" %>
    <% User user = (User)session.getAttribute("user"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles/styles.css" rel="stylesheet" type="text/css">
<link href="styles/account.css" rel="stylesheet" type="text/css">
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

	<div class="account">
		<div class="account-greeting">
			<h2>Hello <c:out value="${user.getUsername() }"/></h2>
			<h3 class="date"> <c:out value="${user.getDate() }"/></h3>
		</div>
		<c:forEach var="account" items="${user.getAccounts()}">
		<div class="account-details">
			<div class="left">
				<div class="left-top">
					<c:out value="${account.getName()}"/>
				</div>
				<div class="left-bottom">
					<c:out value="${account.getBalance()}"/>
				</div>
			</div>
			<div class="right">
				<div class="right-top">
					<c:out value="${account.getType()}"/>
				</div>
				<div class="right-bottom">
					<c:out value="${account.getDate()}"/>
				</div>
			</div>
			<a>Account Actions</a>
		</div>
		</c:forEach>
	</div>

	<!-- <div class="section-2">
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