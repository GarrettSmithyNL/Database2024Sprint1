CREATE TABLE Invoice_X_Services (
    invoice_id INT NOT NULL,
    service_id INT NOT NULL,
    service_price FLOAT NOT NULL,
    PRIMARY KEY (invoice_id, service_id),
    FOREIGN KEY (invoice_id) REFERENCES Invoice(invoice_id),
    FOREIGN KEY (service_id) REFERENCES Services_Offered(service_id)
);
