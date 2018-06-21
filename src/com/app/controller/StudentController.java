package com.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.app.model.Course;
import com.app.model.Student;
import com.app.service.IStudentService;
import com.app.util.CourseUtil;

@Controller
public class StudentController {

	@Autowired
	private IStudentService service;

	@Autowired
	private CourseUtil courseUtil;

	@RequestMapping("/stdReg")
	public String regShow(ModelMap map) {

		List<Course> courseObj = courseUtil.getAllCourseNames();

		System.out.println(courseObj);
		map.addAttribute("courseLst", courseObj);
		return "StdReg";
	}

	@RequestMapping(value = "/insertStd", method = RequestMethod.POST)
	public String saveStd(ModelMap map,
			@RequestParam("stdFName") String stdFName,
			@RequestParam("stdSName") String stdSName,
			@RequestParam("stdFatherName") String stdFatherName,
			@RequestParam("stdDOB") String stdDOB,
			@RequestParam("stdGender") String stdGender,
			@RequestParam("stdEmail") String stdEmail,
			@RequestParam("stdMobileNo") String stdMobileNo,

			@RequestParam("stdVillage") String stdVillage,
			@RequestParam("stdStreet") String stdStreet,
			@RequestParam("stdDistrict") String stdDistrict,
			@RequestParam("stdState") String stdState,

			@RequestParam("stdPincode") String stdPincode,

			@RequestParam("stdImage") CommonsMultipartFile stdImage,
			@RequestParam("stdSignature") CommonsMultipartFile stdSignature,
			@RequestParam("stdCourse") String stdCourse) {

		Course course = courseUtil.getCousreDetails(stdCourse);
		System.out.println("dob " + stdDOB);
		Student std = new Student();

		String address = stdVillage + "(v)\n" + stdStreet + "(street)\n"
				+ stdDistrict + "(Dist) \n" + stdState + "(state)";

		std.setStdName(stdFName + " " + stdSName);
		std.setStdFatherName(stdFatherName);
		std.setStdDOB(stdDOB);
		std.setStdGender(stdGender);
		std.setStdEmail(stdEmail);
		std.setStdMobileNo(stdMobileNo);
		std.setStdPincode(stdPincode);

		std.setStdImage(stdImage.getBytes());
		std.setStdSignature(stdSignature.getBytes());
		std.setStdAddress(address);

		std.setCourse(course);

		int id = service.saveStudent(std);

		map.addAttribute("msg", "successfull register id :" + id);

		System.out.println("Mahi selected std " + std);

		return "StdReg";

	}

	@RequestMapping("/stdDetails")
	public String showStudentPage() {

		return "StdDetails";
	}

	@RequestMapping("/stdId")
	public String getStudentDetails(@RequestParam("stdId") String stdId,
			ModelMap map) throws JsonGenerationException, JsonMappingException, IOException {

		
		if (stdId == "") {
			map.addAttribute("msg", "student id not found");
			return "StdIdNotFound";

		} else {
			int id = Integer.parseInt(stdId);
			Student std = service.getStudentDetails(id);
			
			ObjectMapper mapper=new  ObjectMapper();
			
			String stdobj=mapper.writeValueAsString(std);
			
			System.out.println(stdobj);
			

			if (std != null) {

				map.addAttribute("stdObj", std);
				return "StdData";

			} else {

				map.addAttribute("msg", "student id not found");
				return "StdIdNotFound";
			}

		}

	}

	@RequestMapping("/stdImage")
	public void stdImage(@RequestParam("stdCode") int stdCode,
			HttpServletResponse response) {

		Student std = new Student();
		std = service.getStudentDetails(stdCode);

		response.setContentType("image/jpeg,image/jpg,image/png,image/gif,");
		try {
			ServletOutputStream out = response.getOutputStream();

			out.write(std.getStdImage());

			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("/stdSignature")
	public void stdSignature(@RequestParam("stdCode") int stdCode,
			HttpServletResponse response) {

		Student std = new Student();
		std = service.getStudentDetails(stdCode);

		response.setContentType("image/jpeg,image/jpg,image/png,image/gif,");
		try {
			ServletOutputStream out = response.getOutputStream();

			out.write(std.getStdSignature());

			out.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("/viewAllCourses")
	public String getAllLocs1(ModelMap map) {
		List<Course> courseLst = courseUtil.getAllCourses();
		map.addAttribute("courseLst", courseLst);
		return "CourseWiseStudentList1";
	}

	/**
	 * Ajax Calling in Get Student Course Details
	 * 
	 * @throws IOException
	 * @throws JsonMappingException
	 * @throws JsonGenerationException
	 */
	@RequestMapping("/checkCourseURL")
	public @ResponseBody
	String ajaxCallingStudentCourseDetails(
			@RequestParam("stdCourseSelectId") String stdCourseSelectId)
			throws JsonMappingException, IOException {

		Course course = courseUtil.getCousreDetails(stdCourseSelectId);

		System.out.println("Mahi : " + course);

		ObjectMapper mapper = new ObjectMapper();

		String json = mapper.writeValueAsString(course);

		return json;
	}
}
