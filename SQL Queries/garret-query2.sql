-- This query will bring up all the invoice with items on it from the invoice table and the invoice_x_items table
-- and the items table. It will show the invoice date, the invoice number, the item name, the item price, and the
-- quantity of the item. It will be ordered by the invoice date in descending order.

SELECT invoice.invoice_date as Invoice_Date -- Selecting the invoice date
    ,invoice.invoice_id as Invoice_Number -- Selecting the invoice number
    ,inventory.item_name as Item_Name -- Selecting the item name
    ,inventory.item_cost as Item_Cost -- Selecting the item price
    ,inventory.item_stock as Quantity -- Selecting the quantity of the item
FROM invoice 
JOIN inventory_invoice_xref ON invoice.invoice_id = inventory_invoice_xref.invoice_id
JOIN inventory ON inventory_invoice_xref.item_id = inventory.item_id
ORDER BY invoice.invoice_date DESC;