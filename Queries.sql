SELECT"Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

SELECT first_name, last_name, hire_date 
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT "Department".dept_no, "Department".dept_name, "Department_Manager".emp_no, "Employees".last_name, "Employees".first_name
FROM "Department"
JOIN "Department_Manager"
ON "Department".dept_no = "Department_Manager".dept_no
JOIN "Employees"
ON "Department_Manager".emp_no = "Employees".emp_no;

SELECT "Department_Employee".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
FROM "Department_Employee"
JOIN "Employees"
ON "Department_Employee".emp_no = "Employees".emp_no
JOIN "Department"
ON "Department_Employee".dept_no = "Department".dept_no;

SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT "Department_Employee".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
FROM "Department_Employee"
JOIN "Employees"
ON "Department_Employee".emp_no = "Employees".emp_no
JOIN "Department"
ON "Department_Employee" .dept_no = "Department".dept_no
WHERE "Department".dept_name = 'Sales';

SELECT "Department_Employee".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
FROM "Department_Employee"
JOIN "Employees"
ON "Department_Employee".emp_no = "Employees".emp_no
JOIN "Department"
ON "Department_Employee".dept_no = "Department".dept_no
WHERE "Department".dept_name = 'Sales' 
OR "Department".dept_name = 'Development';

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM "Employees"
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;