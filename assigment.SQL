-- 1 - Select all data from the “departments” table.
SELECT * FROM departments;


-- 2 - Select the “dept_no” column of the “departments” table.
SELECT dept_no FROM departments;


-- 3 - Select all people from the “employees” table whose first name is “Elvis”.
SELECT * FROM employees
WHERE first_name = "Elvis";


-- 4 - Select all female employees whose first name is Kellie. 
SELECT * FROM employees
WHERE gender = "F" AND first_name = "Kellie";
-- 5 - Select all employees whose first name is either Kellie or Aruna.
SELECT * FROM employees
WHERE first_name = "Aruna" OR first_name = "Kellie";


-- 6 - Select all female whose first name is either Kellie or Aruna.
SELECT * FROM employees
WHERE (gender = "F") and (first_name = "Aruna" OR first_name = "Kellie");


-- 7 - Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.
SELECT * FROM employees
WHERE first_name IN ("Denis","Elvis");


-- 8 - Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.
SELECT * FROM employees
WHERE NOT first_name IN ("john","Mark","Jacob");

-- 9 - Working with the “employees” table, use the LIKE operator to select the data about all individuals, whose first name starts with “Mark”; specify that the name can be succeeded by any sequence of characters.
SELECT * FROM employees
WHERE first_name LIKE "MARK";


-- 10 - Retrieve a list with all employees who have been hired in the year 2000.
SELECT * FROM employees
WHERE year(hire_date) = 2000;


-- 11 - Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”. 
SELECT * FROM employees
where  emp_no like "1000_";
-- 12 - Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
SELECT * FROM employees
WHERE first_name LIKE "jack%";

-- 13 - Once you have done that, extract another list containing the names of employees that do not contain “Jack”.
SELECT * FROM employees
WHERE NOT first_name LIKE "jack%";

--  
-- 14 - Select all the information from the “salaries” table regarding contracts from 66,000 to 70,000 dollars per year.

SELECT * FROM salaries
WHERE salary >= 66000 AND salary <=70000
order by salary DESC
;


-- 15 - Retrieve a list with all individuals whose employee number is not between ‘10004’ and ‘10012’.
SELECT * FROM employees
WHERE  emp_no NOT between 10004 AND 100012
 ;


-- 16 - Select the names of all departments with numbers between ‘d003’ and ‘d006’. 
SELECT * FROM departments
WHERE dept_no BETWEEN "d003" AND "d006";

-- 17 - Select the names of all departments whose department number value is not null.
SELECT * FROM departments
where dept_no IS NOT NULL;


-- 18 - Retrieve a list with data about all female employees who were hired in the year 2000 or after.
SELECT * FROM employees
WHERE gender = "F" AND year(hire_date) >= 2000 ;
-- 19 - Extract a list with all employees’ salaries higher than $150,000 per annum.
SELECT * FROM salaries
WHERE salary >= 150000
;
