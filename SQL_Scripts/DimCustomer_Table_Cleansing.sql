USE AdventureWorksDW2019;
GO

-- Cleansed DimCustomer Table:
SELECT
	c.CustomerKey,
	c.FirstName,
	c.LastName,
	CONCAT(TRIM(c.FirstName), ' ', TRIM(c.LastName)) AS FullName,
	CASE
		WHEN UPPER(TRIM(c.Gender)) = 'F' THEN 'Female'
		WHEN UPPER(TRIM(c.Gender)) = 'M' THEN 'Male'
	END AS Gender,
	c.DateFirstPurchase,
	g.City AS City,
	g.EnglishCountryRegionName AS Country
FROM 
	DimCustomer AS c LEFT JOIN DimGeography AS g
	ON c.GeographyKey = g.GeographyKey
ORDER BY
	c.CustomerKey ASC;




