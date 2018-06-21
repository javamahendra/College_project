<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><c:out value="${stdObj.course.courseName}"/></title>
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

		<table>
			<tr>
				<td>Student Id</td>
				<td>:<c:out value="${stdObj.Id}" /></td>
				<td rowspan="5">
					<table>
						<tr>
							<td><img src="stdImage?stdCode=${stdObj.stdId}"
								alt="std-image" width="180px" height="180px" /></td>

						</tr>
					</table>
				</td>
			</tr>

			<tr>
				<td>Name</td>
				<td>: <c:out value="${stdObj.stdName}"/></td>
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

	</center>

	<%@ include file="footer.jsp"%>
</body>
</html>
