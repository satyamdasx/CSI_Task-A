Use AdventureWorks2019
Go
SELECT DISTINCT c.* 
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader so ON c.CustomerID = so.CustomerID;