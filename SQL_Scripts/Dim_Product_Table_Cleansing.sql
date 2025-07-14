USE AdventureWorksDW2019;
GO

-- Cleansed DimProduct Table:
SELECT 
	p.ProductKey,
	p.ProductAlternateKey AS ProductItemCode,
	p.EnglishProductName AS ProductName,
	c.EnglishProductCategoryName AS Category,
	sub.EnglishProductSubcategoryName AS SubCategory,
	p.Color AS Color,
	p.Size AS Size,
	p.ProductLine AS ProductLine,
	p.ModelName AS ModelName,
	p.EnglishDescription AS Description,
	ISNULL(p.Status, 'Outdated') AS Status
FROM
	DimProduct AS p LEFT JOIN DimProductSubcategory AS sub
	ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
	LEFT JOIN DimProductCategory AS c
	ON sub.ProductCategoryKey = c.ProductCategoryKey
ORDER BY 
	p.ProductKey ASC;