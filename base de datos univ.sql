create database univ;
use univ;
CREATE TABLE department (
    department_id VARCHAR(5) NOT NULL PRIMARY KEY,
    descr VARCHAR(50) NOT NULL
);
CREATE TABLE staff (
    staff_id INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    manager_id INT(10),
    position VARCHAR(30) NOT NULL,
    department_id VARCHAR(5) NOT NULL,
    salary DOUBLE,
    FOREIGN KEY (department_id)
        REFERENCES department (department_id)
);
CREATE TABLE student (
    student_id INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id VARCHAR(5) NOT NULL,
    FOREIGN KEY (department_id)
        REFERENCES department (department_id)
);
