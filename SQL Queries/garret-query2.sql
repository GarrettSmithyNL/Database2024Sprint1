-- This query will bring up all the invoice with items on it from the invoice table and the invoice_x_items table
-- and the items table. It will show the invoice date, the invoice number, the item name, the item price, and the
-- quantity of the item. It will be ordered by the invoice date in descending order.

SELECT invoice.invoice_date as Invoice Date -- Selecting the invoice date
    ,invoice.invoice_number as Invoice Number -- Selecting the invoice number
    ,items.item_name as Item Name -- Selecting the item name
    ,items.item_price as Item Price -- Selecting the item price
    ,inventory_invoice_xref.quantity as Quantity -- Selecting the quantity of the item
FROM invoice 
JOIN invoice_x_items ON invoice.invoice_number = inventory_invoice_xref.invoice_number
JOIN inventory ON inventory_invoice_xref.item_id = inventory.item_id
ORDER BY invoice.invoice_date DESC;