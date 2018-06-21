package com.app.service;

import com.app.model.Student;

public interface IStudentService {

	public int saveStudent(Student std);

	public Student getStudentDetails(int stdId);

}
