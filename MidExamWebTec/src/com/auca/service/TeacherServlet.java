package com.auca.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.auca.controller.TeacherDao;
import com.auca.domain.Equalification;
import com.auca.domain.Teacher;

public class TeacherServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private TeacherDao teacherDao = new TeacherDao();
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException {
		doPost(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		saveTeacher(req, res);
	}
	
	public void saveTeacher(HttpServletRequest req, HttpServletResponse res) {
		
		try {
		    String teachercode = req.getParameter("code");
		    String teachername = req.getParameter("name");
		    String teacherqualification = req.getParameter("qualification");

		    // Convert the string to the enum value
		    Equalification qualification = Equalification.valueOf(teacherqualification);

		    Teacher teacher = new Teacher();
		    teacher.setCode(teachercode);
		    teacher.setNames(teachername);
		    teacher.setQualification(qualification); // Set the enum value

		    teacherDao.saveTeacher(teacher);

		    req.getRequestDispatcher("adminDashboard.jsp").forward(req, res);
		} catch (Exception e) {
		    e.printStackTrace();
		}

		
	}
}
