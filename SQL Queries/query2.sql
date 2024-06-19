-- This query joins the tables 'Invoice', 'Invoice_X_Services', and 'Services_Offered' 
-- to find the total cost of services for each invoice.
-- The result includes the invoice date, invoice ID, and the total cost of services.

SELECT 
    Invoice.invoice_date,
    Invoice.invoice_id,
    SUM(Invoice_X_Services.service_price) AS total_services_cost
FROM 
    Invoice
JOIN 
    Invoice_X_Services ON Invoice.invoice_id = Invoice_X_Services.invoice_id
JOIN 
    Services_Offered ON Invoice_X_Services.service_id = Services_Offered.service_id
GROUP BY 
    Invoice.invoice_id
ORDER BY 
    Invoice.invoice_date DESC;
