Use AdventureWorks2019
Go
SELECT p.Name AS ProductName, pc.Name AS CategoryName
FROM Production.Product p
JOIN Production.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
JOIN Production.ProductVendor pv ON p.ProductID = pv.ProductID
JOIN Purchasing.Vendor v ON pv.BusinessEntityID = v.BusinessEntityID
WHERE v.Name = 'Specialty Biscuits, Ltd.';