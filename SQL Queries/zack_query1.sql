-- This query provides a summary of payments made by credit card.
-- It joins the tables 'Credit_Cards' and 'Credit_Card_X_Payments'.
-- The result includes the credit card number (partially masked), total payments made, and the count of transactions.

SELECT 
    CONCAT('****-****-****-', RIGHT(Credit_Cards.credit_card_number, 4)) AS masked_credit_card_number,
    SUM(Payments.payment_amount) AS total_payments_made,
    COUNT(Credit_Card_X_Payments.payment_id) AS transaction_count
FROM 
    Credit_Card_X_Payments
JOIN 
    Credit_Cards ON Credit_Card_X_Payments.credit_card_id = Credit_Cards.credit_card_id
JOIN 
    Payments ON Credit_Card_X_Payments.payment_id = Payments.payment_id
GROUP BY 
    Credit_Cards.credit_card_number
ORDER BY 
    total_payments_made DESC;
