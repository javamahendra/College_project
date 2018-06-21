<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Data</title>

<style type="text/css">
#data {
	width: 700px;
	font-size: 20px;
}

tr {cellspacing ="10px"
	
}
</style>
</head>
<body>

	<%@ include file="master.jsp"%>
	<br />
	<center>
		<div id="data">
			<form action="stdId" method="post">

				Enter Student Id : <input type="text" name="stdId" /> <input
					type="submit" value="submit" />

			</form>
			<br /> <font color="red"><b>${msg}</b></font>
		</div>
	</center>
	<%@ include file="footer.jsp"%>

</body>
</html>