-- This query joins customer information with pet and waste station details.
-- It combines first and last names from the customer table with pet ID, type, and name from the pet table.
-- Additionally, it includes station ID and location-on-site from the wasteStation table.
-- The join is based on the customer ID and the results are ordered alphabetically.

SELECT 
    c.first_name || ' ' || c.last_name AS customer_name,  -- Concatenate first and last names for customer name
    p.pet_id,
    p.pet_name,
    pt.pet_type_name,
    ws.station_id,
    ws.location_on_site
FROM 
    customer c  -- Alias the Customer table as 'c'
JOIN 
    pets p ON c.customer_id = p.customer_id  -- Join Customer and Pet tables on Customer_ID
JOIN
	pet_type pt ON p.pet_type_id = pt.pet_type_id
JOIN 
    waste_station ws ON c.customer_id = ws.customer_id  -- Join Customer and WasteStation tables on Customer_ID
ORDER BY 
    customer_name;  -- Order the results alphabetically by Customer Name