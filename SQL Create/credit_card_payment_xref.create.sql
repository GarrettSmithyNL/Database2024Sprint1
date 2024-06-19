CREATE TABLE credit_card_payment_xref (
    credit_card_id INT NOT NULL,
    payment_id INT NOT NULL,
    PRIMARY KEY (credit_card_id, payment_id),
    FOREIGN KEY (credit_card_id) REFERENCES credit_cards(credit_card_id),
    FOREIGN KEY (payment_id) REFERENCES payments(payment_id)
);
