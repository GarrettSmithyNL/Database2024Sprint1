-- This query joins the Employee, Payroll Info, and Tax Bracket table to
-- give a list of employees with their ID, their first and last name concatenated into a full Employee Name,
-- showing their job titles with the pay rate they receive, if they have choosen to take extra taxes out of their pay
-- and it will show the tax percent on their pay. Finally the list is sorted by job title first alphabetically, and then
-- sorted by their pay rate.

SELECT
	e.Employee_ID,
	e.First_Name || ' ' || e.Last_Name AS Employee_Name, -- Concatenate first and last name of the employee
	e.Job_Title,
	pr.Pay_Rate,
	pr.Extra_Taxes,
	tb.Tax_Percent
FROM
	Employees e 	--Alias the Employee table as e
JOIN
	PayrollInfo pr ON e.Employee_ID = pr.Employee_ID 	-- Join Payroll Info and Employees table on Employee_ID
JOIN
	TaxBracket tb ON pr.Tax_Bracket_ID = tb. Tax_Bracket_ID 	-- Join Payroll Info and Tax Bracket tables on Tax_Bracket_ID 
ORDER BY
	Job_Title, 		-- Order by job title alphabetically followed by,
	Pay_Rate DESC;	-- ordering the employee list further by pay rate in decending order
					-- I included this for not everyone with the same job title will be paid the same