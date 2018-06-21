package com.app.model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Student")
public class Student {

	@Id
	@GeneratedValue
	private int stdId;
	private String stdName;
	private String stdFatherName;
	private String stdGender;
	private String stdDOB;
	private String stdEmail;
	private String stdMobileNo;
	private String stdAddress;
	private String stdPincode;

	@Lob
	private byte[] stdSignature;
	@Lob
	private byte[] stdImage;

	@ManyToOne
	@JoinColumn(name = "courseFk")
	private Course course;

	public Student() {
		super();
	}

	public Student(int stdId, String stdName, String stdFatherName,
			String stdEmail, String stdMobileNo, String stdAddress,
			String stdPincode, String stdDOB, String stdGender,
			byte[] stdSignature, byte[] stdImage, Course course) {
		super();
		this.stdId = stdId;
		this.stdName = stdName;
		this.stdFatherName = stdFatherName;
		this.stdEmail = stdEmail;
		this.stdMobileNo = stdMobileNo;
		this.stdAddress = stdAddress;
		this.stdPincode = stdPincode;
		this.stdDOB = stdDOB;
		this.stdGender = stdGender;
		this.stdSignature = stdSignature;
		this.stdImage = stdImage;
		this.course = course;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public String getStdFatherName() {
		return stdFatherName;
	}

	public void setStdFatherName(String stdFatherName) {
		this.stdFatherName = stdFatherName;
	}

	public String getStdEmail() {
		return stdEmail;
	}

	public void setStdEmail(String stdEmail) {
		this.stdEmail = stdEmail;
	}

	public String getStdMobileNo() {
		return stdMobileNo;
	}

	public void setStdMobileNo(String stdMobileNo) {
		this.stdMobileNo = stdMobileNo;
	}

	public String getStdAddress() {
		return stdAddress;
	}

	public void setStdAddress(String stdAddress) {
		this.stdAddress = stdAddress;
	}

	public String getStdPincode() {
		return stdPincode;
	}

	public void setStdPincode(String stdPincode) {
		this.stdPincode = stdPincode;
	}

	public String getStdDOB() {
		return stdDOB;
	}

	public void setStdDOB(String stdDOB) {
		this.stdDOB = stdDOB;
	}

	public String getStdGender() {
		return stdGender;
	}

	public void setStdGender(String stdGender) {
		this.stdGender = stdGender;
	}

	public byte[] getStdSignature() {
		return stdSignature;
	}

	public void setStdSignature(byte[] stdSignature) {
		this.stdSignature = stdSignature;
	}

	public byte[] getStdImage() {
		return stdImage;
	}

	public void setStdImage(byte[] stdImage) {
		this.stdImage = stdImage;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@Override
	public String toString() {
		return "Student [stdId=" + stdId + ", stdName=" + stdName
				+ ", stdFatherName=" + stdFatherName + ", stdEmail=" + stdEmail
				+ ", stdMobileNo=" + stdMobileNo + ", stdAddress=" + stdAddress
				+ ", stdPincode=" + stdPincode + ", stdDOB=" + stdDOB
				+ ", stdGender=" + stdGender + ", stdSignature="
				+ Arrays.toString(stdSignature) + ", stdImage="
				+ Arrays.toString(stdImage) + ", course=" + course + "]";
	}

}
