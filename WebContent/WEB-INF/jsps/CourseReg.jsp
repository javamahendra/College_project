<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
label {
	font-family: "Monotype Corsiva", Times, serif;
	font-size: 130%;
	color: blue;
}

legend {
	font-size: 200%;
	color: red;
}

div.form {
	align: center;
}

fieldset {
	width: 450px;
	align: center;
}

legend {
	font-size: 100%;
}
</style>
<body>
	<%@ include file="master.jsp"%>
	<br />
	<br />
	<div class="form">
		<center>
			<fieldset>
				<legend>Course Registration Detials</legend>
				<div id="details">
					<form action="insertCourse" method="post">
						<table>
							<tr>
								<td><label>Course Id :</label></td>
								<td><input type="text" name="courseId"></td>
							</tr>
							<tr>
								<td><label>Course Name :</label></td>
								<td><input type="text" name="courseName"></td>
							</tr>
							<tr>
								<td><label>Course Duration :</label></td>
								<td><input type="text" name="courseDuration">
								</td>
							</tr>
							<tr>
								<td><label>Course Fee :</label></td>
								<td><input type="text" name="courseFee" ></td>
							</tr>
							<tr>
								<td><label>Course Examination Fee :</label></td>
								<td><input type="text" name="courseExamFee" ></td>
							</tr>
							<tr>
								<td><label>Course Special Fee :</label></td>
								<td><input type="text" name="courseSpecialFee" >
								</td>
							</tr>
							<tr>
								<td><label>Course Library Fee :</label></td>
								<td><input type="text" name="courseLibraryFee">
								</td>
							</tr>

							<tr>
								<td></td>
								<td><input type="reset" value="clear" /> <input
									type="submit" value="Register" /></td>
							</tr>

						</table>
					</form>
					${msg}
				</div>
			</fieldset>
		</center>

	</div>


	<center>
		<%@ include file="footer.jsp"%>
	</center>


</body>
</html>
