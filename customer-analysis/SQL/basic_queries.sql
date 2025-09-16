
--Basic exploration
SELECT COUNT(*) AS TotalCustomers FROM DimCustomer;


--Gender breakdown
SELECT Gender, COUNT(*) AS Total
FROM DimCustomer
GROUP BY Gender;


--MaritalStatus and Children
SELECT MaritalStatus, AVG(TotalChildren) AS AvgChildren
FROM DimCustomer
GROUP BY MaritalStatus;


--Top 10 clients by income
SELECT TOP 10 FirstName, LastName, YearlyIncome
FROM DimCustomer
ORDER BY YearlyIncome DESC;


--Number of customers by Region (GeographyKey)
SELECT GeographyKey, COUNT(*) AS Total
FROM DimCustomer
GROUP BY GeographyKey
ORDER BY Total DESC;

