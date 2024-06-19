-- Employee and License cross table
CREATE TABLE employee_licenses_xref (
    license_id int NOT NULL,
    employee_id int NOT NULL,
    expiry_date DATE NOT NULL,
    CONSTRAINT fk_license_id FOREIGN KEY (license_id) 
	REFERENCES Licenses(license_id),
    CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) 
	REFERENCES employees(employee_id),
	PRIMARY KEY (license_id, employee_id)
);

