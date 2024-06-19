CREATE TABLE Payments (
    payment_id SERIAL PRIMARY KEY,
    payment_method_id INT NOT NULL,
    invoice_id INT NOT NULL,
    payment_amount FLOAT NOT NULL,
    FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id),
    FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id)
);
