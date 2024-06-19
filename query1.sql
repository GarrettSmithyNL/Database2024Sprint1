-- This query joins the tables 'invoices' and 'payments' to find the total amount paid for each invoice
-- and the remaining amounts to pay.
-- The result is grouped by invoice number and includes the total amount paid for each invoice. 

SELECT invoice.invoice_date
  ,invoices.invoice_number 
  ,SUM(payments.amount)  -- Sum of payments for each invoice
  ,invoices.total_amount -- Total amount of the invoice
  ,invoices.total_amount - SUM(payments.amount) AS total_amount_paid -- Remaining amount to pay
FROM invoices
JOIN payments
  ON invoices.invoice_number = payments.invoice_number
GROUP BY invoices.invoice_number
ORDER BY invoices.invoice_date DESC;
