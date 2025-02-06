CREATE VIEW vw_employee_details AS
SELECT e.fname, e.lname, d.dname
FROM employees e
JOIN departments d ON e.department_id = d.department_id;


CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT fname, lname, pname, hours
FROM work_hours
WHERE department_number = 5;


CREATE VIEW vw_high_status_suppliers AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;