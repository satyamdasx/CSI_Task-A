Use AdventureWorks2019
Go
SELECT e.FirstName, e.LastName, m.FirstName AS SupervisorFirstName, m.LastName AS SupervisorLastName
FROM HumanResources.Employee e
LEFT JOIN HumanResources.Employee m ON e.ManagerID = m.BusinessEntityID;