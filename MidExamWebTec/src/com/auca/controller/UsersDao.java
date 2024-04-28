package com.auca.controller;


import org.hibernate.Session;
import org.hibernate.Transaction;
import com.auca.domain.Users;
import com.auca.view.HibernateUtil;
import org.hibernate.query.Query;


public class UsersDao {

	
	public void saveStudent(Users users) {
		
		Transaction transaction = null;
		try {
			
			Session session = HibernateUtil.getSession().openSession();
			transaction = session.beginTransaction();
			session.save(users);
			transaction.commit();
			session.close();
			
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
	}
	
	public Users getUserByEmail(String regNo, String password) {
        try {
            Session session = HibernateUtil.getSession().openSession();
            String hql = "FROM Users WHERE regNo = :regNo";
            Query<Users> query = session.createQuery(hql, Users.class);
            query.setParameter("regNo", regNo);
            Users user = query.uniqueResult();
            session.close();

            if (user != null && user.getPassword().equals(password)) {
                return user;
            }
            
            return null; // User not found or incorrect password
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
	
	
}
