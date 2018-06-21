<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
h2 {
	font-family: "Monotype Corsiva", Times, serif;
	font-size: 200%;
}

.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
}

.navbar a:hover,.dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<center>
		<h2>
			<b><spring:message code="site" />&#153; </b>
		</h2>
		<div class="navbar">
			<a href="home">Home</a> <a href="courseReg">Course Registration</a> <a
				href="stdReg">Student Registration</a> <a href="home">Library</a> <a
				href="contact">Contact</a> <a href="#news">News</a> <a
				href="stdDetails">Student Details</a>
			<div class="dropdown">
				<button class="dropbtn">
					Course Details <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<%@ include file="MenuCourseLst.jsp"%>
				</div>
			</div>
		</div>
	</center>

</body>
</html>

