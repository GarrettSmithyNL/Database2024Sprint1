-- Employee and License cross table
CREATE TABLE Employee_Licenses (
    License_ID int NOT NULL,
    Employee_ID int NOT NULL,
    Expiry_Date DATE NOT NULL,
    CONSTRAINT FK_License_ID FOREIGN KEY (License_ID) 
	REFERENCES Licenses(License_ID),
    CONSTRAINT FK_Employee_ID FOREIGN KEY (Employee_ID) 
	REFERENCES Employees(Employee_ID),
	PRIMARY KEY (License_ID, Employee_ID)
);

