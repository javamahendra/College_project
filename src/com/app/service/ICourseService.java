package com.app.service;

import java.util.List;

import com.app.model.Course;

public interface ICourseService {

	public String saveCourse(Course course);

	public List<Course> getAllCourses();

	public void deleteCourseById(String courseId);

	public Course getCourseById(String courseId);

	public void updateCourse(Course coure);

}
