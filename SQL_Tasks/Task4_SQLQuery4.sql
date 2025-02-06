SELECT *
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '30 days';


CREATE PROCEDURE sp_get_employee_hours(IN emp_id INT)
BEGIN
    SELECT e.fname, e.lname, SUM(w.hours) AS total_hours
    FROM employees e
    JOIN works_on w ON e.SSN = w.ESSN
    WHERE e.emp_id = emp_id
    GROUP BY e.fname, e.lname;
END;


CREATE PROCEDURE sp_department_employee_count()
BEGIN
    SELECT d.department_id, d.department_name, COUNT(e.emp_id) AS employee_count
    FROM departments d
    JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_id, d.department_name
    HAVING COUNT(e.emp_id) > 5;
END;