Use AdventureWorks2019
Go
SELECT c.ContactName
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader so ON c.CustomerID = so.CustomerID
GROUP BY c.ContactName
HAVING COUNT(so.SalesOrderID) > 3;