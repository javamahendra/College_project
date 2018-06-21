package com.app.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.ICourseDao;
import com.app.model.Course;

@Repository
public class CourseDaoImpl implements ICourseDao {
	@Autowired
	private HibernateTemplate ht;

	public String saveCourse(Course loc) {
		String id = (String) ht.save(loc);
		return id;
	}

	public List<Course> getAllCourses() {

		List<Course> locList = ht.loadAll(Course.class);
		return locList;
	}

	public void deleteCourseById(String courseId) {
		
		ht.delete(new Course(courseId));
	}

	public Course getCourseById(String courseId) {
		Course course = ht.get(Course.class, courseId);
		return course;
	}

	public void updateCourse(Course course) {
		ht.update(course);
	}

	

}
