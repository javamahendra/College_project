package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.dao.ICourseDao;
import com.app.model.Course;
import com.app.service.ICourseService;

@Service
public class CousreServiceImpl implements ICourseService {

	@Autowired
	private ICourseDao dao;

	public String saveCourse(Course course) {

		return dao.saveCourse(course);
	}

	public List<Course> getAllCourses() {

		return dao.getAllCourses();
	}

	public void deleteCourseById(String courseId) {

		dao.deleteCourseById(courseId);

	}

	public Course getCourseById(String courseId) {

		return dao.getCourseById(courseId);
	}

	public void updateCourse(Course coure) {

		dao.updateCourse(coure);

	}

}
