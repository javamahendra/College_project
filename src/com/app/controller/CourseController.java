package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Course;
import com.app.service.ICourseService;

@Controller
public class CourseController {

	@Autowired
	private ICourseService service;

	@RequestMapping("/home")
	public String showLocReg1() {
		return "Home";
	}

	@RequestMapping("/contact")
	public String showContact() {
		return "Contact";
	}

	@RequestMapping("/courseReg")
	public String showLocReg() {
		return "CourseReg";
	}

	@RequestMapping(value = "/insertCourse", method = RequestMethod.POST)
	public String insertLoc(@ModelAttribute("course") Course course,
			ModelMap map) {

		String id = service.saveCourse(course);

		map.addAttribute("msg", id + ": course is successful register..... ");
		return "CourseReg";
	}

	@RequestMapping("/viewCourses")
	public String getAllLocs(ModelMap map) {
		List<Course> courseList = service.getAllCourses();
		map.addAttribute("courseListObj", courseList);
		return "MenuCourseList";
	}

	/*@RequestMapping("/viewCourses")
	public String getAllLocs1(ModelMap map) {
		List<Course> courseList = service.getAllCourses();
		map.addAttribute("courseLst", courseList);
		return "CourseStudentWiseList";
	}*/

	@RequestMapping("/deleteLoc")
	public String deleteLoc(@RequestParam("courseId") String courseId) {
		service.deleteCourseById(courseId);
		return "redirect:viewAllCourses";
	}
}
