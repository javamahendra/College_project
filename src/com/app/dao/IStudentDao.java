package com.app.dao;

import com.app.model.Student;

public interface IStudentDao {

	public int saveStudent(Student std);
	
	public Student getStudentDetails(int stdId);
}
