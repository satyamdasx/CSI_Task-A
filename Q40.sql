Use AdventureWorks2019
Go
SELECT pv.BusinessEntityID AS SupplierID, COUNT(p.ProductID) AS NumberOfProducts
FROM Production.ProductVendor pv
JOIN Production.Product p ON pv.ProductID = p.ProductID
GROUP BY pv.BusinessEntityID;