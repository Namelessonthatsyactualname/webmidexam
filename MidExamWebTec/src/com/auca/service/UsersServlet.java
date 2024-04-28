package com.auca.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auca.controller.UsersDao;
import com.auca.domain.Users;


public class UsersServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private UsersDao studentDao = new UsersDao();
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        saveStudent(req, res);
    }
	
	public void saveStudent(HttpServletRequest req, HttpServletResponse res) {
		try {
			
			String studentregno = req.getParameter("regno");
			String studentfullname = req.getParameter("fullname");
			String password = req.getParameter("password");
			
			Users users = new Users();
			
			users.setRegNo(studentregno);
			users.setFirstName(studentfullname);
			users.setRole("student");
			users.setPassword(password);
			
			studentDao.saveStudent(users);
			
			req.getRequestDispatcher("Login.jsp").forward(req, res);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}