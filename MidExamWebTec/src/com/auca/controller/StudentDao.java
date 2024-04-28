package com.auca.controller;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.auca.domain.Student;

import com.auca.view.HibernateUtil;

public class StudentDao {
	
	public void saveStudent(Student student) {
		Transaction transaction = null;
		
		try {
			
			Session session = HibernateUtil.getSession().openSession();
			transaction = session.beginTransaction();
			session.save(student);
			transaction.commit();
			session.close();
			
		} catch (Exception e) {
			if (transaction != null) {
					transaction.rollback();
			}
		}
	}
	public Student getStudentById(String studentId) {
	    try {
	        Session session = HibernateUtil.getSession().openSession();
	        Student student = (Student) session
	            .createQuery("from Student where id = :studentId")
	            .setParameter("studentId", studentId)
	            .uniqueResult();
	        session.close();
	        return student;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

}
