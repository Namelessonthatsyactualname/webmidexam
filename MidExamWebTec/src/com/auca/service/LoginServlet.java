package com.auca.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.auca.controller.UsersDao;
import com.auca.domain.Users;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private UsersDao usersDao = new UsersDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String regNo = request.getParameter("regNo");
        String password = request.getParameter("password");

        // Check if email and password match a user in your database
        Users user = usersDao.getUserByEmail(regNo, password);

        if (user != null && user.getPassword().equals(password)) {
            // Login successful
            HttpSession session = request.getSession();
            session.setAttribute("user", user); // Store user in the session
            
            // Check the user's role
            String role = user.getRole();
            
            if ("student".equals(role)) {
                response.sendRedirect("studentDashboard.jsp"); // Redirect students to the student dashboard
            } else if ("admin".equals(role)) {
                response.sendRedirect("adminDashboard.jsp"); // Redirect administrators to the admin dashboard
            } else {
                // Handle other roles or show an error message
                // For example, redirect to an error page
                response.sendRedirect("Login.jsp");
            }
        } else {
            // Add this to your LoginServlet when the login fails
            request.setAttribute("error", "Login failed. Please check your email and password.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

}
