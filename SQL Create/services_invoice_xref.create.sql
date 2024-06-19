CREATE TABLE services_invoice_xref (
    invoice_id INT NOT NULL,
    service_id INT NOT NULL,
    service_price FLOAT NOT NULL,
    PRIMARY KEY (invoice_id, service_id),
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (service_id) REFERENCES services_offered(service_id)
);
