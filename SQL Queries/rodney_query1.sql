-- This query joins the Employee, Payroll Info, and Tax Bracket table to
-- give a list of employees with their ID, their first and last name concatenated into a full Employee Name,
-- showing their job titles with the pay rate they receive, if they have choosen to take extra taxes out of their pay
-- and it will show the tax percent on their pay. Finally the list is sorted by job title first alphabetically, and then
-- sorted by their pay rate.

SELECT
	e.employee_id,
	e.first_name || ' ' || e.last_name AS employee_name, -- Concatenate first and last name of the employee
	e.job_title,
	pr.pay_rate,
	pr.extra_taxes,
	tb.tax_percent
FROM
	employee e 	--Alias the Employee table as e
JOIN
	payroll pr ON e.employee_id = pr.employee_id 	-- Join Payroll Info and Employees table on employee_id
JOIN
	tax_bracket tb ON pr.tax_bracket_id = tb.tax_bracket_id 	-- Join Payroll Info and Tax Bracket tables on Tax_Bracket_ID 
ORDER BY
	job_title, 		-- Order by job title alphabetically followed by,
	pay_rate DESC;	-- ordering the employee list further by pay rate in decending order
					-- I included this for not everyone with the same job title will be paid the same