<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#locales").on("change", function() {

			var lang = $("#locales").val();

			//var url = window.location.href;
			var hash = location.hash;

			window.location.href = hash + lang;

		});
	});
</script>
<title>Home</title>
</head>
<body>
	<div style="float: right">
		select language <select id="locales">
			<option value=""></option>
			<option value="?lang=en">English</option>
			<option value="?lang=te">Telugu</option>
			<option value="?lang=hi">Hindi</option>
		</select> <br />
		<%-- <spring:message code="Id" />
		<br />
		<spring:message code="Name" />
		<br />
		<spring:message code="Email" />
		<br />
		<spring:message code="Mobile" />
		<br />
		<spring:message code="Address" />
		<br />
		<spring:message code="Location" /> --%>
	</div>

	<center>

		<%@ include file="master.jsp"%>
		<div>
			<img src="../imgs/clg01.jpg" width="100%" />
		</div>
	</center>
	<%@ include file="footer.jsp"%>

</body>
</html>