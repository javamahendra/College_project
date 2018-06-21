<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
<style type="text/css">
a {
	text-decoration: nome;
}

body {
	background-image: url("../imgs/clg01.jpg");
	
}

img {
	border-radius: 10px;
}

#contact {
	border: 2px solid black;
	width: 380px;
	padding-top: 16px;
	padding-bottom: 16px;
	border-radius: 10px;
	background-color: #d6d6d6;
	color: blue;
	font-family: "Monotype Corsiva", Times, serif;
	font-size: 130%;
}
</style>
</head>
<body>
	<%@ include file="master.jsp"%>
	<center>
		<br />
		<div id="contact">
			<table>
				<tr>
					<td colspan="2">
						<center>
							<img src="../imgs/Mahi.jpg" width="160px" />
						</center>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<hr />
					</td>
				</tr>
				<tr>
					<td>Name :</td>
					<td>Mahendra Gadiparthi</td>
				</tr>
				<tr>
					<td>Profession :</td>
					<td>Developer</td>
				</tr>
				<tr>
					<td>Mobile :</td>
					<td>9493929220</td>
				</tr>
				<tr>
					<td>Location :</td>
					<td>Hyderabad,India</td>
				</tr>
				<tr>
					<td>Email :</td>
					<td>javabymahendra@gmail.com</td>
				</tr>
				<tr>
					<td>Facebook :</td>
					<td><a href="#">Profile Link</a></td>
				</tr>
			</table>

		</div>
	</center>
	<%@ include file="footer.jsp"%>


</body>
</html>