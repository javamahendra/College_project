<%@page import="com.sun.jersey.server.impl.container.servlet.Include"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="master.jsp"%>
	<br />
	<center>
		<form action="#" method="post">
			<h3>
				<b>Choose Course </b>: <select name="">
					<option>Select Course</option>
					<c:forEach items="${courseLst}" var="course">
						<option value="${course.courseId}">
							<c:out value="${course.courseName}" />
						</option>
					</c:forEach>
				</select> <input type="submit" value="submit" />
			</h3>
		</form>
	</center>

	<%@ include file="footer.jsp"%>
</body>
</html>