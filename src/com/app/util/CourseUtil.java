package com.app.util;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.model.Course;
import com.app.service.ICourseService;

@Component
public class CourseUtil {

	@Autowired
	ICourseService service;

	public List<Course> getAllCourseNames() {

		List<Course> course = service.getAllCourses();

		return course;
	}

	public Course getCousreDetails(String courseId) {

		Course course = service.getCourseById(courseId);

		return course;
	}

	public List<Course> getAllCourses() {

		List<Course> course = service.getAllCourses();

		return course;
	}
}
