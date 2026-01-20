package com.employee.service;

import java.util.List;

import com.employee.dao.EmployeeDao;
import com.employee.model.Employee;

public class EmployeeService {

	private EmployeeDao employeeDao = new EmployeeDao();

	// Registration
	public void registerEmployee(Employee employee) {
		employeeDao.saveEmployee(employee);
	}

	// Login validation
	public Employee validateLogin(String loginId, String password) {
		return employeeDao.validateLogin(loginId, password);
	}

	// fetch all employees (Welcome page)
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}
}
