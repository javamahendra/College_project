<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
</head>
<body>

	<%@ include file="master.jsp"%>
	<br />
	<br />
	<center>
		<form action="stdId" method="post">

			Enter Student Id : <input type="text" name="stdId" /> <input
				type="submit" value="submit" />

		</form>
	</center>
	<%@ include file="footer.jsp"%>
</body>
</html>