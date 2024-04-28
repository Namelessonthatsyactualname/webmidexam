package com.auca.controller;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.auca.domain.AcademicUnit;
import com.auca.view.HibernateUtil;

public class AcademicUnitDao {

	public void saveAcademicUnit(AcademicUnit academicUnit) {
		
		Transaction transaction = null;
		try {
			
			Session session = HibernateUtil.getSession().openSession();
			transaction = session.beginTransaction();
			session.save(academicUnit);
			transaction.commit();
			session.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public AcademicUnit getAcademicUnitByCode(String code) {
	    try {
	        Session session = HibernateUtil.getSession().openSession();
	        AcademicUnit academicUnit = (AcademicUnit) session
	            .createQuery("from AcademicUnit where code = :code")
	            .setParameter("code", code)
	            .uniqueResult();
	        System.out.println("Parent Code fetched successfully."+academicUnit);
	        session.close();
	        return academicUnit;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

}
