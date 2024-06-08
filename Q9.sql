Use AdventureWorks2019
Go
SELECT * 
FROM Sales.Customer c
WHERE NOT EXISTS (SELECT 1 FROM Sales.SalesOrderHeader so WHERE c.CustomerID = so.CustomerID);