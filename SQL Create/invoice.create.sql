CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    employee_id INT NOT NULL,
    invoice_date DATE NOT NULL,
    invoice_total FLOAT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
