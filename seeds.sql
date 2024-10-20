-- Populate department table
INSERT INTO department (name) VALUES
('Engineering'),
('Finance'),
('Legal'),
('Sales');

-- Populate role table
INSERT INTO role (title, salary, department_id) VALUES
('Software Engineer', 85000, (SELECT id FROM department WHERE name = 'Engineering')),
('Lead Engineer', 125000, (SELECT id FROM department WHERE name = 'Engineering')),
('Accountant', 75000, (SELECT id FROM department WHERE name = 'Finance')),
('Financial Analyst', 110000, (SELECT id FROM department WHERE name = 'Finance')),
('Lawyer', 130000, (SELECT id FROM department WHERE name = 'Legal')),
('Legal Team Lead', 180000, (SELECT id FROM department WHERE name = 'Legal')),
('Sales Representative', 65000, (SELECT id FROM department WHERE name = 'Sales')),
('Sales Manager', 100000, (SELECT id FROM department WHERE name = 'Sales'));

-- Populate employee table
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('John', 'Doe', (SELECT id FROM role WHERE title = 'Lead Engineer'), NULL),
('Jane', 'Smith', (SELECT id FROM role WHERE title = 'Software Engineer'), (SELECT id FROM employee WHERE first_name = 'John' AND last_name = 'Doe')),
('Mike', 'Johnson', (SELECT id FROM role WHERE title = 'Financial Analyst'), NULL),
('Emily', 'Williams', (SELECT id FROM role WHERE title = 'Accountant'), (SELECT id FROM employee WHERE first_name = 'Mike' AND last_name = 'Johnson')),
('David', 'Brown', (SELECT id FROM role WHERE title = 'Legal Team Lead'), NULL),
('Sarah', 'Davis', (SELECT id FROM role WHERE title = 'Lawyer'), (SELECT id FROM employee WHERE first_name = 'David' AND last_name = 'Brown')),
('Tom', 'Wilson', (SELECT id FROM role WHERE title = 'Sales Manager'), NULL),
('Anna', 'Taylor', (SELECT id FROM role WHERE title = 'Sales Representative'), (SELECT id FROM employee WHERE first_name = 'Tom' AND last_name = 'Wilson'));