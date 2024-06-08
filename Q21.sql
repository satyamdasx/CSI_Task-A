Use AdventureWorks2019
Go
SELECT c.ContactName, COUNT(so.SalesOrderID) AS NumberOfOrders
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader so ON c.CustomerID = so.CustomerID
GROUP BY c.ContactName;