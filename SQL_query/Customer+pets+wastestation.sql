-- This query joins customer information with pet and waste station details.
-- It combines first and last names from the customer table with pet ID, type, and name from the pet table.
-- Additionally, it includes station ID and location-on-site from the wasteStation table.
-- The join is based on the customer ID and the results are ordered alphabetically.

SELECT 
    c.First_Name || ' ' || c.Last_Name AS Customer_Name,  -- Concatenate first and last names for customer name
    p.Pet_ID,
    p.Pet_Type,
    p.Pet_Name,
    ws.Station_ID,
    ws.Location_On_Site
FROM 
    Customer c  -- Alias the Customer table as 'c'
JOIN 
    Pet p ON c.Customer_ID = p.Customer_ID  -- Join Customer and Pet tables on Customer_ID
JOIN 
    WasteStation ws ON c.Customer_ID = ws.Customer_ID  -- Join Customer and WasteStation tables on Customer_ID
ORDER BY 
    customer_Name;  -- Order the results alphabetically by Customer Name