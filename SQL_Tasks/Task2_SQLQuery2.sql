SELECT emp_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
 AND manager_id NOT IN (101, 200);


SELECT e.name AS employee_name, d.name AS department_name
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
ORDER BY d.name ASC;



SELECT department_id, COUNT(*) AS employee_count, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;