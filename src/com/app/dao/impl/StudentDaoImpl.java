package com.app.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.dao.IStudentDao;
import com.app.model.Student;

@Repository
public class StudentDaoImpl implements IStudentDao {

	@Autowired
	private HibernateTemplate ht;

	@Override
	public int saveStudent(Student std) {

		return (Integer) ht.save(std);
	}

	@Override
	public Student getStudentDetails(int stdId) {
		
		String hql="select fileId,fileName from com.app.model.Document";

		return ht.get(Student.class, stdId);
	}
}
