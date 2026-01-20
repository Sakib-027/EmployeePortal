package com.employee.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.employee.model.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	private EmployeeService employeeService = new EmployeeService();

// To Show registration page
	@GetMapping("/register")
	public String showRegisterPage() {
		return "register";
	}

// This Handles our registration form
	@PostMapping("/register")
	public String registerEmployee(Employee employee) {
		employeeService.registerEmployee(employee);
		return "login";
	}

// Show login page
	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}

// Handles login form
	@PostMapping("/login")
	public String loginEmployee(@RequestParam("loginId") String loginId, @RequestParam("password") String password,
			HttpSession session, Model model) {
		Employee employee = employeeService.validateLogin(loginId, password);
		if (employee != null) {
			session.setAttribute("loggedInUser", employee);
			
// This is to sohw list on welcome page
			List<Employee> employeeList = employeeService.getAllEmployees();
			model.addAttribute("employeeList", employeeList);
			return "welcome";
		}
		model.addAttribute("error", "Invalid Login ID or Password");
		return "login";
	}

// Welcome Page
	@GetMapping("/welcome")
	public String showWelcomePage(HttpSession session, Model model) {
		Employee loggedInUser = (Employee) session.getAttribute("loggedInUser");
		if (loggedInUser == null) {
			return "login";
		}
		model.addAttribute("userName", loggedInUser.getName());
		return "welcome";
	}

// Logout navigation
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}
}
