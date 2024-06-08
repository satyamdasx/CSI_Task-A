Use AdventureWorks2019
Go
SELECT m.BusinessEntityID AS ManagerID, COUNT(e.BusinessEntityID) AS NumberOfReports
FROM HumanResources.Employee e
JOIN HumanResources.Employee m ON e.ManagerID = m.BusinessEntityID
GROUP BY m.BusinessEntityID;