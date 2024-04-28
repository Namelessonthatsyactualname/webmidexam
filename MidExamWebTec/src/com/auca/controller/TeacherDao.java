package com.auca.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.auca.domain.Teacher;
import com.auca.view.HibernateUtil;

public class TeacherDao {

	public void saveTeacher(Teacher teacher) {
		
		Transaction transaction = null;
		try {
			
			Session session = HibernateUtil.getSession().openSession();
			transaction = session.beginTransaction();
			session.save(teacher);
			transaction.commit();
			session.close();
			
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
	}
	public Teacher getTeacherByCode(String code) {
	    try {
	        Session session = HibernateUtil.getSession().openSession();
	        Teacher teacher = (Teacher) session
	            .createQuery("from Teacher where code = :code")
	            .setParameter("code", code)
	            .uniqueResult();
	        session.close();
	        return teacher;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

}
