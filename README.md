


# Student Management System – Java Web Application

A web-based **Student Management System** built using **JSP**, **Servlets**, and **MySQL**. This project allows user registration, login, and full CRUD operations (Create, Read, Update, Delete) for managing student (employee) data.

## 🔧 Technologies Used

- Java (JSP + Servlets)
- NetBeans IDE
- Apache Tomcat Server
- MySQL (via XAMPP)
- JDBC
- JSP for views and forms

## 📁 Project Structure

StudentManagement2/ ├── Web Pages/ │ ├── add.jsp │ ├── edit.jsp │ ├── index.jsp │ ├── login.jsp │ ├── logout.jsp │ ├── register.jsp │ └── view.jsp │ ├── Source Packages/ │ ├── com.dao │ ├── com.db │ │ ├── DBConnection.java │ │ └── Employee.java │ └── com.example │ ├── AddEmployeeServlet.java │ ├── DeleteEmployeeServlet.java │ ├── LogServlet.java │ ├── Register.java │ └── UpdateEmployeeServlet.java


## 💡 Features

- Student registration via `register.jsp`
- Secure login and logout functionality
- Add new student records
- View all student records
- Edit and update student details
- Delete student records
- MySQL database integration using JDBC
- Clean separation of JSP pages, Servlets, and DAO

## 🛠 Setup Instructions

1. **Clone the Repository**


2. **Open in NetBeans**

3. **Start XAMPP**
- Run Apache and MySQL
- Import the database using phpMyAdmin (`studentdb.sql` file if available)

4. **Configure Database**
- In `DBConnection.java`, update your DB URL, username, and password if needed.

5. **Deploy on Apache Tomcat**
- Right-click project > Run

6. **Access Application**
