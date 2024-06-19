-- Payroll Info table for employees
CREATE TABLE PayrollInfo (
	Employee_ID int NOT NULL,
	Tax_Bracket_ID int NOT NULL,
	Social_Insurance_Number varchar (11) NOT NULL,
	Bank_Account_Number varchar (20) NOT NULL,
	Pay_Rate float NOT NULL,
	Extra_Taxes float NOT NULL,
	CONSTRAINT FK_Employee_ID FOREIGN KEY (Employee_ID) 
	REFERENCES Employee(Employee_ID),
	CONSTRAINT FK_Tax_Bracket_ID FOREIGN KEY (Tax_Bracket_ID) 
	REFERENCES Tax_Bracket(Tax_Bracket_ID),
	PRIMARY KEY (Employee_ID)
);