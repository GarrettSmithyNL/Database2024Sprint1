-- This query will get the employees 'pay_rate' and 'tax_percent' from the 'employees' table and the 'tax bracket' table.
-- The result will be grouped by 'employee_id' and will include the full name of the employee, 
-- 'pay_rate', 'job_title', 'tax_percent' for each employee.

SELECT employees.employee_id
  ,employees.first_name || ' ' || employees.last_name AS full_name -- Concatenate first and last name
  ,employees.job_title -- Job title of the employee
  ,payroll.pay_rate -- Pay rate of the employee
  ,tax_brackets.tax_percent -- Tax percent based on tax bracket
FROM employees
JOIN payroll -- Join the payroll table to get the pay rate
  ON employees.employee_id = payroll.employee_id
JOIN tax_brackets -- Join the tax_brackets table to get the tax percent
  ON payroll.tax_bracket_id = tax_brackets.tax_bracket_id
GROUP BY employees.employee_id
ORDER BY employees.employee_id ASC;