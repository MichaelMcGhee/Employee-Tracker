
use employee_tracker_db;

insert into department (name) values 
    ("hr"),
    ("engineering"),
    ("sales"),
    ("operations");

insert into role (title, salary, department_id) values
    ("operations manager", 80000, 4),
    ("payroll executive", 50000, 1),
    ("engineer", 70000, 2),
    ("sales rep", 60000, 3);

insert into employee (first_name, last_name, role_id, manager_id) values
    ("Michael", "McGhee", 1, null),
    ("Jake", "Willis", 2, 1),
    ("John", "Willis", 3, 1),
    ("Jane", "Willis", 4, 1);


