CREATE TABLE Credit_Card_X_Payments (
    credit_card_id INT NOT NULL,
    payment_id INT NOT NULL,
    PRIMARY KEY (credit_card_id, payment_id),
    FOREIGN KEY (credit_card_id) REFERENCES Credit_Cards(credit_card_id),
    FOREIGN KEY (payment_id) REFERENCES Payments(payment_id)
);
