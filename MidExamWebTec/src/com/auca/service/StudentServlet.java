package com.auca.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auca.controller.StudentDao;
import com.auca.domain.Student;

public class StudentServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private StudentDao studentDao = new StudentDao();
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		doPost(req, res);
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		saveStudent(req, res);
	}
	
	public void saveStudent(HttpServletRequest req, HttpServletResponse res) {
		
		try {
			
			String studentregno = req.getParameter("regno");
			String studentfullname = req.getParameter("fullname");
			String studentdate = req.getParameter("date");
			
			Student student = new Student();
			
			student.setRegno(studentregno);
			student.setFullname(studentfullname);
			student.setDateofbirth(studentdate);
			
			studentDao.saveStudent(student);
			
			req.getRequestDispatcher("studentDashboard.jsp").forward(req, res);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	


}
