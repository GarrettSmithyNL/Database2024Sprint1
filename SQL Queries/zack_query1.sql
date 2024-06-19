-- This query provides a summary of payments made by credit card.
-- It joins the tables 'Credit_Cards' and 'credit_card_payment_xref'.
-- The result includes the credit card number (partially masked), total payments made, and the count of transactions.

SELECT 
    CONCAT('****-****-****-', RIGHT(Credit_Cards.credit_card_number, 4)) AS masked_credit_card_number,
    SUM(payments.payment_amount) AS total_payments_made,
    COUNT(credit_card_payment_xref.payment_id) AS transaction_count
FROM 
    credit_card_payment_xref
JOIN 
    Credit_Cards ON credit_card_payment_xref.credit_card_id = Credit_Cards.credit_card_id
JOIN 
    payments ON credit_card_payment_xref.payment_id = payments.payment_id
GROUP BY 
    Credit_Cards.credit_card_number
ORDER BY 
    total_payments_made DESC;
