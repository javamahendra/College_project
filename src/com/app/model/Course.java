package com.app.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "course")
public class Course {

	@Id
	private String courseId;
	private String courseName;
	private String courseDuration;
	private String courseFee;
	private String courseSpecialFee;
	private String courseExamFee;
	private String courseLibraryFee;

	public Course(String courseId, String courseName, String courseDuration,
			String courseFee, String courseSpecialFee, String courseExamFee,
			String courseLibraryFee) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseDuration = courseDuration;
		this.courseFee = courseFee;
		this.courseSpecialFee = courseSpecialFee;
		this.courseExamFee = courseExamFee;
		this.courseLibraryFee = courseLibraryFee;
	}

	public Course() {
		super();
	}

	public Course(String courseId) {
		super();
		this.courseId = courseId;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseDuration() {
		return courseDuration;
	}

	public void setCourseDuration(String courseDuration) {
		this.courseDuration = courseDuration;
	}

	public String getCourseSpecialFee() {
		return courseSpecialFee;
	}

	public void setCourseSpecialFee(String courseSpecialFee) {
		this.courseSpecialFee = courseSpecialFee;
	}

	public String getCourseExamFee() {
		return courseExamFee;
	}

	public void setCourseExamFee(String courseExamFee) {
		this.courseExamFee = courseExamFee;
	}

	public String getCourseLibraryFee() {
		return courseLibraryFee;
	}

	public void setCourseLibraryFee(String courseLibraryFee) {
		this.courseLibraryFee = courseLibraryFee;
	}

	public String getCourseFee() {
		return courseFee;
	}

	public void setCourseFee(String courseFee) {
		this.courseFee = courseFee;
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseName=" + courseName
				+ ", courseDuration=" + courseDuration + ", courseFee="
				+ courseFee + ", courseSpecialFee=" + courseSpecialFee
				+ ", courseExamFee=" + courseExamFee + ", courseLibraryFee="
				+ courseLibraryFee + "]";
	}

}
