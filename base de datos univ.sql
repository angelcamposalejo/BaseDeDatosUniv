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
INSERT INTO department(department_id,descr)VALUES
('C','Computer Engineering'),
('E','Electrical Engineering'),
('M','Mechanical Engineering'),
('P','Principal');
INSERT INTO student(first_name,last_name,department_id)VALUES
('Jorge','Lopez','E'),
('Julian','Martinez','C'),
('Rosa','Perez','E'),
('Noe','Razo','E'),
('Marcela','Pinales','M');
INSERT INTO staff(last_name,first_name,manager_id,position,department_id,salary)VALUES
('Smith','Henry',null,'President','P','8800.00'),
('Heffes','Louis',10,'Dept Head','P','5800.00'),
('Hanes','Thomas',10,'Dept Head','E','4800.00'),
('Smith','Mary',10,'Dept Head','C','5100.00'),
('Hee','Henry',11,'Profesor','M','3800.00'),
('Aguilar','Sergio',11,'Profesor','M','3900.00'),
('Visual','Bill',11,'Profesor','M','2800.00'),
('Smith','Nancy',12,'Profesor','E','3899.00'),
('Lopez','Teresa',12,'Profesor','E','3553.00'),
('Lynch','Paul',13,'Profesor','C','3656.00'),
('Ferry','Peter',13,'Profesor','C','3978.00'),
('Red','Henry',13,'Profesor','C','5000.00'),
('Sky','Susan',13,'Profesor','C','5200.00'),
('Smith','Jorge',13,'Profesor','C','4900.00'),
('Cate','John',13,'Profesor','C','4100.00'),
('Cannon','Kate',11,'Secretary','M','2200.00'),
('Allen','Liz',12,'Secretary','E','2800.00'),
('Blue','Jennifer',13,'Secretary','C','2500.00'),
('Wood','Albert',10,'Secretary','P','2800.00');