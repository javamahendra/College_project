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
			<br />
			<fieldset>
				<legend>Student Details</legend>
				<table>
					<tr>
						<td>Name</td>
						<td>: <c:out value="${stdObj.stdName}" /></td>
						<td rowspan="5">
							<table>
								<tr>
									<td><img src="stdImage?stdCode=${stdObj.stdId}"
										alt="std-image" width="180px" height="180px"/></td>

								</tr>
								<tr>
									<td rowspan="1"><img
										src="stdSignature?stdCode=${stdObj.stdId}" alt="std-image"
										width="150px" /></td>
								</tr>
							</table>
						</td>
					</tr>

					<tr>
						<td>Father Name</td>
						<td>: <c:out value="${stdObj.stdFatherName}" /></td>


					</tr>
					<tr>
						<td>Gender</td>
						<td>: <c:out value="${stdObj.stdGender}" /></td>
					</tr>
					<tr>
						<td>DOB</td>
						<td>: <c:out value="${stdObj.stdDOB}" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td>: <c:out value="${stdObj.stdEmail}" /></td>
					</tr>
					<tr>
						<td>Mobile No</td>
						<td>: <c:out value="${stdObj.stdMobileNo}" /></td>
					</tr>
					<tr>
						<td>Address</td>
						<td>: <c:out value="${stdObj.stdAddress}" /></td>
					</tr>
					<tr>
						<td>Pincode</td>
						<td>: <c:out value="${stdObj.stdPincode}" /></td>
					</tr>
					<tr>
						<td>Course Name</td>
						<td>: <c:out value="${stdObj.course.courseName}" /></td>
					</tr>
					<tr>
						<td>Course</td>
						<td>: <c:out value="${stdObj.course.courseDuration}" /></td>
					</tr>
					<tr>
						<td>Course Fee</td>
						<td>: <c:out value="${stdObj.course.courseFee}" /></td>
					</tr>
					<tr>
						<td>Special Fee</td>
						<td>: <c:out value="${stdObj.course.courseSpecialFee}" /></td>
					</tr>
					<tr>
						<td>Examination Fee</td>
						<td>: <c:out value="${stdObj.course.courseExamFee}" /></td>
					</tr>
					<tr>
						<td>Library Fee</td>
						<td>: <c:out value="${stdObj.course.courseLibraryFee}" /></td>
					</tr>


				</table>


			</fieldset>
		</div>
	</center>
	<%@ include file="footer.jsp"%>

</body>
</html>