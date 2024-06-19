-- This query joins the tables 'invoice' and 'payments' to find the total amount paid for each invoice
-- and the remaining amounts to pay.
-- The result is grouped by invoice number and includes the total amount paid for each invoice. 

SELECT invoice.invoice_date
    ,invoice.invoice_id 
    ,SUM(payments.payment_amount) AS total_amount_paid -- Total amount paid for the invoice
    ,invoice.invoice_total -- Total amount of the invoice
    ,invoice.invoice_total - SUM(payments.payment_amount) AS remaining_amount_to_be_paid -- Remaining amount to pay
FROM invoice
JOIN payments
  ON invoice.invoice_id = payments.invoice_id
GROUP BY invoice.invoice_id
ORDER BY invoice.invoice_date DESC;
