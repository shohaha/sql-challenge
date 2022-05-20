# sql-challenge

# SQL Bootcamp Assignment - Employee Database

## Background

It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform **data modeling**, **data engineering**, and **data analysis**.

## Instructions

This assignment is divided into three parts: data modeling, data engineering, and data analysis. 

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables.

#### Data Engineering

* Use the provided information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.

  * Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. 

  > To avoid errors, be sure to import the data in the same order that the tables were created. Also account for the headers when importing.

#### Data Analysis

Once I had a complete database, perform these steps:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Bonus (Optional)

As I examine the data, I began to suspect that the dataset is fake. Maybe I was given spurious data in order to test the data engineering skills. To confirm my hunch, I decide to create a visualization of the data following these steps: 

1. Import the SQL database into Pandas.

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.
