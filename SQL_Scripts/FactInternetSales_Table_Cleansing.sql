USE AdventureWorksDW2019;
GO

-- Cleansed FactInternetSales Table:
SELECT 
	ProductKey,
	OrderDateKey,
	DueDateKey,
	ShipDateKey,
	CustomerKey,
	SalesOrderNumber,
	OrderQuantity,
	UnitPrice,
	SalesAmount
FROM
	FactInternetSales
WHERE
	LEFT(OrderDateKey, 4) >= '2021' AND LEFT(OrderDateKey, 4) <= '2024';

