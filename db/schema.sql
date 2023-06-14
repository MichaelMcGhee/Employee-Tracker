drop database if exists employee_tracker_db;
create database employee_tracker_db;
use employee_tracker_db;

create table department (
    id int primary key auto_increment,
    name VARCHAR (30)
);

create table role (
    id int primary key auto_increment,
    title varchar (30),
    salary decimal, 
    department_id int,
    FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

create table employee (
    id int primary key auto_increment,
    first_name varchar (30),
    last_name varchar (30),
    role_id int,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE SET NULL,
    manager_id int,
    FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);





