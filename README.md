# Employee Tracker

## Table of Contents
1. [Description](#description)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Database Schema](#database-schema)
5. [Features](#features)
6. [Video Demonstration](#video-demonstration)
7. [Contributing](#contributing)
8. [License](#license)

## Description

Employee Tracker is a command-line application to manage a company's employee database, using Node.js, Inquirer, and PostgreSQL. This Content Management System (CMS) allows non-developers to easily view and interact with information stored in databases.

## Installation

To install and set up the project, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the project directory in your terminal.
3. Install the required npm packages:
   ```
   npm install
   ```
4. Set up your PostgreSQL database:
   - Create a new database named `employee_tracker` (or your preferred name).
   - Run the schema.sql file to create the necessary tables:
     ```
     psql -d employee_tracker -f schema.sql
     ```
   - Run the seeds.sql file to populate the tables with sample data:
     ```
     psql -d employee_tracker -f seeds.sql
     ```
5. Update the database connection details in `db.js` with your PostgreSQL credentials.

## Usage

To run the application, use the following command in your terminal:

```
npm start
```

Follow the on-screen prompts to view, add, update, or delete information in the employee database.

## Database Schema

The database consists of three tables:

1. **department**
   - id: SERIAL PRIMARY KEY
   - name: VARCHAR(30) UNIQUE NOT NULL

2. **role**
   - id: SERIAL PRIMARY KEY
   - title: VARCHAR(30) UNIQUE NOT NULL
   - salary: DECIMAL NOT NULL
   - department_id: INTEGER NOT NULL (Foreign Key to department.id)

3. **employee**
   - id: SERIAL PRIMARY KEY
   - first_name: VARCHAR(30) NOT NULL
   - last_name: VARCHAR(30) NOT NULL
   - role_id: INTEGER NOT NULL (Foreign Key to role.id)
   - manager_id: INTEGER (Foreign Key to employee.id)

## Features

- View all departments, roles, and employees
- Add departments, roles, and employees
- Update employee roles and managers
- View employees by manager or department
- Delete departments, roles, and employees
- View the total utilized budget of a department

## Video Demonstration

To see the Employee Tracker in action, check out our video demonstration:

[Employee Tracker Demo](https://github.com/nandyamit/Employee-Tracker/blob/main/Video%20Demo.mp4)

This video walks through the entire application, demonstrating how to:
- Start the application
- View all departments, roles, and employees
- Add a department, role, and employee
- Update an employee's role
- Delete data from the database
- View employees by manager and department
- Calculate the total utilized budget of a department

## Contributing

Contributions to the Employee Tracker project are welcome. Please ensure to update tests as appropriate.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

## License

Distributed under the MIT License. See `LICENSE` for more information.