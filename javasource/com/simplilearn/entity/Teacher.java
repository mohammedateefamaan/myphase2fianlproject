package com.simplilearn.entity;

import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Teacher {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String teacher_name;
	private String subject_name;
	private String class_name;

	public int getId() {
		return id;
	}

	public String getTeacherName() {
		return teacher_name;
	}
	public void setTeacherName(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public Teacher(String subject_name, String teacher_name, String class_name) {
		super();
		this.subject_name = subject_name;
		this.teacher_name = teacher_name;
		this.class_name = class_name;
	}
	public Teacher() {
		super();
	}

	@Override
	public String toString() {
		return "Subject [id=" + id + ", teacher_name=" + teacher_name+ ", subject_name=" + subject_name + ", classRoom_name=\" + classRoom_name + ]";
	}


	public String getSubject_name() {
		return teacher_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}
	
	
	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	
	
}