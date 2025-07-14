USE AdventureWorksDW2019;
GO

-- Cleansed DimDate Table:
SELECT
	DateKey,
	FullDateAlternateKey AS Date,
	EnglishDayNameOfWeek AS Day,
	WeekNumberOfYear AS WeekNumber,
	EnglishMonthName AS Month,
	SUBSTRING(EnglishMonthName, 1, 3) AS MonthShort,
	MonthNumberOfYear MonthNumber,
	CalendarQuarter AS Quarter,
	CalendarYear AS Year
FROM
	DimDate
WHERE
	CalendarYear >= '2021' AND CalendarYear <= '2024';


