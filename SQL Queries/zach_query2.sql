-- This query joins the tables 'invoice', 'services_invoice_xref', and 'Services_Offered' 
-- to find the total cost of services for each invoice.
-- The result includes the invoice date, invoice ID, and the total cost of services.

SELECT 
    invoice.invoice_date,
    invoice.invoice_id,
    SUM(services_invoice_xref.service_price) AS total_services_cost
FROM 
    invoice
JOIN 
    services_invoice_xref ON invoice.invoice_id = services_invoice_xref.invoice_id
JOIN 
    Services_Offered ON services_invoice_xref.service_id = Services_Offered.service_id
GROUP BY 
    invoice.invoice_id
ORDER BY 
    invoice.invoice_date DESC;
