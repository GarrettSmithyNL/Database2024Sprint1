-- Payroll Info table for employees
CREATE TABLE payroll (
	employee_id int NOT NULL,
	tax_bracket_id int NOT NULL,
	social_insurance_number varchar (11) NOT NULL,
	bank_account_number varchar (20) NOT NULL,
	pay_rate float NOT NULL,
	extra_taxes float NOT NULL,
	CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) 
	REFERENCES employee(employee_id),
	CONSTRAINT fk_tax_bracket_id FOREIGN KEY (tax_bracket_id) 
	REFERENCES tax_bracket(tax_bracket_id),
	PRIMARY KEY (employee_id)
);