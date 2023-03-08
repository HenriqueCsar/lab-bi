-- The following example groups SalesQuota and aggregates SaleYTD amounts in the AdventureWorks2019 database. The GROUPING function is applied to the SalesQuota column.

SELECT SalesQuota, SUM(SalesYTD) 'TotalSalesYTD', GROUPING(SalesQuota) AS 'Grouping'  
FROM Sales.SalesPerson  
GROUP BY SalesQuota WITH ROLLUP;
GO  