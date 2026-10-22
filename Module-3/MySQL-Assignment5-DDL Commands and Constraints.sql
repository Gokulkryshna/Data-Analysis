CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2)
);
SHOW TABLES;
ALTER TABLE Employees
ADD email VARCHAR(100);
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
USE employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
DROP TABLE Location;
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
DESCRIBE Employees;
SHOW CREATE TABLE Employees;
SHOW CREATE TABLE Departments;
SHOW CREATE TABLE Location;