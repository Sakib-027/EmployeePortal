package com.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.employee.model.Employee;

public class EmployeeDao {

	// TO Save Employee (Registration)
	public void saveEmployee(Employee employee) {

		Transaction tx = null;
		Session session = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			tx = session.beginTransaction();
			session.save(employee);
			tx.commit();

		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}
	}

	// Validate Login
	public Employee validateLogin(String loginId, String password) {

		Employee employee = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			String hql = "FROM Employee WHERE loginId = :loginId AND password = :password";

			Query<Employee> query = session.createQuery(hql, Employee.class);
			query.setParameter("loginId", loginId);
			query.setParameter("password", password);

			employee = query.uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return employee;
	}

	// Fetch All Employees (Welcome)
	public List<Employee> getAllEmployees() {

		List<Employee> list = null;

		try (Session session = HibernateUtil.getSessionFactory().openSession()) {

			list = session.createQuery("FROM Employee", Employee.class).list();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
