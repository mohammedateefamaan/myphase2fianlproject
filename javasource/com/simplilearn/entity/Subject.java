package com.simplilearn.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@Entity
public class Subject {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String subject_name;
	private String teacher_name;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name = "class_student", 
		joinColumns = { @JoinColumn(name = "student_id", referencedColumnName = "id") }, 
		inverseJoinColumns = {@JoinColumn(name = "class_id", referencedColumnName = "id") })

	public int getId() {
		return id;
	}

	public String getName() {
		return subject_name;
	}
	public void setName(String subject_name) {
		this.subject_name = subject_name;
	}
	public Subject(String subject_name, String teacher_name) {
		super();
		this.subject_name = subject_name;
		this.teacher_name = teacher_name;
	}
	public Subject() {
		super();
	}
	

	@Override
	public String toString() {
		return "Subject [id=" + id + ", subject_name=" + subject_name+ ", teacher_name=" + teacher_name + "]";
	}


	public String getTeacher_name() {
		return teacher_name;
	}

	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
}