package com.simplilearn.servlets;

import java.io.IOException;

import java.util.List;
import org.hibernate.*;
import org.hibernate.service.*;
import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.simplilearn.dao.*;
import com.simplilearn.dao.SubjectDao;
import com.simplilearn.entity.Subject;
import com.simplilearn.util.HibernateUtil;

public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SubjectDao subjectDao;

	public SubjectServlet() {
		super();
	}

	public void init() {
		subjectDao = new SubjectDao();
	}

	private Subject getSubject(HttpServletRequest request, HttpServletResponse response) {
		String subjectId = request.getParameter("id");
		Subject subject = subjectDao.getSubject(Integer.parseInt(subjectId));
		return subject;
	}

	private List<Subject> getSubjects(HttpServletRequest request, HttpServletResponse response) {
		List<Subject> subjects = subjectDao.getAllSubjects();
		try {
			HttpSession session = request.getSession();
			session.setAttribute("subjects", subjects);
			RequestDispatcher dispatcher = request.getRequestDispatcher("list-subjects.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subjects;
	}

	private Subject createSubject(HttpServletRequest request, HttpServletResponse response) {
		String teacherName = request.getParameter("teacher_name");
		String subjectName = request.getParameter("subject_name");

		Subject subjectModel1 = new Subject();
		Subject newSubject = subjectDao.saveSubject(subjectModel1);
		getSubjects(request, response);
		return newSubject;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			switch (action) {

			case "new":
				createSubject(request, response);
				break;

			case "list":
				getSubjects(request, response);
				break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}