package com.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sun.print.resources.serviceui;

import com.app.dao.IStudentDao;
import com.app.model.Student;
import com.app.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private IStudentDao dao;

	@Override
	public int saveStudent(Student std) {

		return dao.saveStudent(std);
	}
	
	@Override
	public Student getStudentDetails(int stdId) {
		
		return dao.getStudentDetails(stdId);
	}

}
