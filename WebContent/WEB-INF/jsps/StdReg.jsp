<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
legend {
	color: red;
}

span {
	color: red;
}

#divform {
	width: 800px;
}

label {
	color: blue;
	font-family: "Monotype Corsiva", Times, serif;
	font-size: 130%;
}

#note {font-size =5;
	
}
</style>

<script type="text/javascript">
	$(document).ready(function() {

				$("#stdCourseSelectId").on("change",function() {
							
					var stdCourseSelectId = $("#stdCourseSelectId").val();
					$("#error").text("");
						$.ajax({
							url : "checkCourseURL",
							data : {
								stdCourseSelectId : stdCourseSelectId
							},
							success : function(data) {

								var obj = JSON.parse(data);

								$("#ajaxResponse").html("");
								
								$("#mahi").append(obj.courseId);
								$("#ajaxResponse").append("<tr><td>course Name</td><td><input type='text' value='" + obj.courseName + "' readonly='true'/></td></tr>");
								$("#ajaxResponse").append("<input type='text' value='" + obj.courseDuration + "' readonly='true'/><br/>");
								$("#ajaxResponse").append("<input type='text' value='" + obj.courseFee + "' readonly='true'/><br/>");
								$("#ajaxResponse").append("<input type='text' value='" + obj.courseSpecialFee + "' readonly='true'/><br/>");
								$("#ajaxResponse").append("<input type='text' value='" + obj.courseExamFee + "' readonly='true'/><br/>");
								$("#ajaxResponse").append("<input type='text' value='" + obj.courseLibraryFee + "' readonly='true'/><br/>");
								$("#ajaxResponse").append("</img src='../imgs/clg01.jpg' alt='sample img'");
								
								$("#courseMsg").text(data);
							}
						});
					});
			});
</script>
</head>
<body>
	<%@ include file="master.jsp"%>
	<br>
	<br>
	<center>
		<div id="divform">
			<fieldset>
				<legend>Student Registration</legend>
				<form action="insertStd" method="post" enctype="multipart/form-data">

					<table>
						<tr>
							<td><label>First Name </label><span>* </span></td>
							<td><input type=text name="stdFName" required/></td>

							<td><label>Second Name </label><span>* </span></td>
							<td><input type=text name="stdSName"></td>
						</tr>

						<tr>
							<td><label>Father Name </label><span>*</span></td>
							<td><input type="text" name="stdFatherName"></td>
						</tr>
						<tr>
							<td><label>Student Image Upload </label><span>*</span></td>
							<td><img id="img1" src="#" alt="your image" width="100px"
								height="100px" /> <input type="file" name="stdImage"
								onchange="document.getElementById('img1').src = window.URL.createObjectURL(this.files[0])">
							</td>

							<td><label>Student Signature </label><span>*</span></td>
							<td><img id="img2" src="#" alt="your image" width="100px"
								height="60px" /> <input type="file" name="stdSignature" 
								onchange="document.getElementById('img2').src = window.URL.createObjectURL(this.files[0])"></td>
						</tr>

						<tr>
							<td><label>DOB </label><span>*</span></td>
							<td><input type="date" name="stdDOB"></td>
						</tr>
						<tr>
							<td><label>Email Id </label><span>*</span></td>
							<td><input type="text" name="stdEmail" required></td>
						</tr>


						<tr>
							<td><label>Gender </label><span>*</span></td>
							<td><input type="radio" name="stdGender" value="Male"
								id="gender">Male <input type="radio" name="stdGender"
								value="Female" id="gender">Female</td>
						</tr>
						<tr>
							<td><label>Mobile No </label><span>*</span></td>
							<td><input type="text" name="stdMobileNo" required></td>
						</tr>
						<tr>
							<td><label>Village </label><span>*</span></td>
							<td><input type="text" name="stdVillage" required/></td>
						</tr>
						<tr>
							<td><label>Street </label><span>*</span></td>
							<td><input type="text" name="stdStreet" required/></td>
						</tr>
						<tr>
							<td><label>District </label><span>*</span></td>
							<td><select name="stdDistrict">
									<option>select..</option>
									<option value="Guntur">Guntur</option>
									<option value="Krishna">Krishna</option>
									<option value="Prakasham">Prakasham</option>
							</select></td>

						</tr>

						<tr>
							<td><label>State </label><span>*</span></td>
							<td><select Name="stdState">
									<option value="-1" selected>select..</option>
									<option value="Andhra Pradesh">Andhra Pradesh</option>
									<option value="TamilNadu">TamilNadu</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Kerala">Kerala</option>
							</select></td>
						</tr>
						<tr>
							<td><label>PinCode </label><span>*</span></td>
							<td><input type="text" name="stdPincode" id="mahi" required></td>

						</tr>


						<tr>
							<td><label>Course </label><span>* </span></td>

							<td><select name="stdCourse" id="stdCourseSelectId" >
									<option>select..</option>
									<c:forEach items="${courseLst}" var="course">
										<option value="${course.courseId}"><c:out
												value="${course.courseName}" /></option>
									</c:forEach>

							</select></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="reset"> <input type="submit"
								value="Submit Form" /></td>
						</tr>
						<tr></tr>
						<tr>
							<td><span id="name"></span></td>
							<!-- <td><textarea id="courseMsg"></textarea></td> -->
						</tr>
					</table>
				</form>
				<div>
					<div id="anotherSection">
							<div id="ajaxResponse"></div>
					</div>

					<p id="note">
						<span>Note : </span>Please make sure your details are correct
						before submitting form and that all fields marked with <span>*
						</span>are completed!.
					</p>
				</div>
			</fieldset>
		</div>

		<span id="courseMsg"></span>
		<table id="orderMsg"></table>
	</center>


	<%@ include file="footer.jsp"%>
</body>
</html>