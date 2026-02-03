# TrekTrails – Java Web Application

TrekTrails is a dynamic **Java-based web application** developed using **Java, JSP, Servlets (Spring MVC style), and MySQL**.  
The project provides a complete tourism and travel management platform with user and admin functionalities.

This application follows the **MVC architecture** and is designed to run on **Apache Tomcat**.

# Technologies Used

# Backend
- Java (JDK 8+)
- JSP & Servlets
- Spring MVC configuration
- JDBC
- Apache Tomcat

# Frontend
- HTML5
- CSS3
- JavaScript
- Bootstrap
- jQuery

# Database
- MySQL

# Tools
- Eclipse IDE
- Maven
- Git & GitHub

# Project Structure
TrekTrails/
├── src/main/java/
│ └── PRKSS/PROJ_Tour/
│ ├── config/
│ │ ├── FileConfig.java
│ │ └── MvcConfiguration.java
│ ├── controller/
│ │ ├── HomeController.java
│ │ ├── UserController.java
│ │ └── AdminController.java
│ ├── modules/
│ │ ├── DBmanager.java
│ │ ├── EncryptionManager.java
│ │ ├── Mailer.java
│ │ ├── Captcha.java
│ │ └── CodeGenerator.java
│ └── model/
│ └── UserMaster.java
│
├── src/main/webapp/
│ ├── WEB-INF/
│ │ ├── views/
│ │ │ ├── admin/
│ │ │ ├── user/
│ │ │ ├── common/
│ │ │ └── *.jsp
│ │ └── web.xml
│ ├── resources/
│ │ ├── Bootstrap/
│ │ ├── css/
│ │ ├── js/
│ │ └── Images/
│
├── pom.xml
└── README.md


---


# Features

# User Module
- User registration & login
- Secure password encryption
- Captcha verification
- View tour packages
- Submit enquiries & feedback

# Admin Module
- Admin authentication
- Manage users
- Manage enquiries
- Send notifications
- Dashboard management

---

## ▶️ How to Run the Project Locally

# Prerequisites
- JDK  or above
- Apache Tomcat 
- MySQL Server
- Eclipse IDE (recommended)

---

# Step 1: Clone the Repository
```bash
git clone https://github.com/NitinSolanki-11/TrekTrails.git

Step 2: Import Project into Eclipse

   1. Open Eclipse

 2. file → Import → Existing Maven Project

  3. Select the project folder

 4. Finish

Step 3: Database Setup (MySQL)

1. Create database:

2. CREATE DATABASE tour_db;


3 .Import the provided SQL file (if available)
OR create required tables manually.

Update database credentials in:
DBmanager.java
            
            String url = "jdbc:mysql://localhost:3306/trektrails";
            String username = "root";
            String password = "your_password";

Step 4: Configure Tomcat

  1. Add Apache Tomcat server in Eclipse

  2. Deploy the project

  3. Start the server


Step 5: Run in Browser