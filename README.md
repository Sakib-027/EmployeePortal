# Employee Portal – Spring MVC & Hibernate

Employee Portal is a simple Java-based web application built using **Spring MVC** and **Hibernate** with **JSP** as the view technology.  
This project was developed to understand the complete flow of a traditional Java web application using XML-based configuration.

## Tech Stack

- Java 11  
- Spring MVC (XML configuration)  
- Hibernate ORM  
- JSP & JSTL  
- MySQL  
- Apache Tomcat 9  
- Maven  
- Eclipse IDE  


## Features

- Employee Registration  
- Employee Login  
- Session-based authentication  
- Welcome page after successful login  
- Display of registered employees  
- Logout functionality  


## Project Architecture

The application follows a layered architecture:

- **Controller Layer** – Handles HTTP requests and navigation  
- **Service Layer** – Contains business logic  
- **DAO Layer** – Handles database operations using Hibernate  
- **Model Layer** – Entity classes mapped to database tables  
- **View Layer** – JSP pages for UI  


## Application Flow

1. User registers using the registration form  
2. Registered user logs in using credentials  
3. On successful login, user is redirected to the welcome page  
4. Session is created to track the logged-in user  
5. User can log out to end the session  


## Database Configuration

- Database Name: `employee_portal`  
- ORM Tool: Hibernate  
- Configuration File: `hibernate.cfg.xml`  
- Database tables are managed using Hibernate entity mappings  


## How to Run the Project

1. Clone the repository  
2. Import the project as a **Maven project** in Eclipse  
3. Configure MySQL credentials in `hibernate.cfg.xml`  
4. Add the project to **Apache Tomcat 9 server**  
5. Start the server and access the application in the browser  


## Notes

- This project uses **XML-based Spring configuration**, not Spring Boot  
- The focus is on understanding core concepts of Spring MVC and Hibernate  
- Designed for learning and practice purposes  


## Author

**Sakib Sheikh**  
Engineering Graduate | Java & Web Technologies Learner
