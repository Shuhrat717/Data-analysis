
--The most profitable customers
SELECT 
    CustomerKey,
    FirstName,
    LastName,
    YearlyIncome,
    RANK() OVER (ORDER BY YearlyIncome DESC) AS IncomeRank
FROM DimCustomer;


--Annual income accumulation
SELECT 
    CustomerKey,
    FirstName,
    YearlyIncome,
    SUM(YearlyIncome) OVER (ORDER BY CustomerKey ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RunningTotalIncome
FROM DimCustomer;


--AVR Earners by Gender
SELECT *
FROM (
    SELECT 
        Gender,
        AVG(YearlyIncome) AS AvgIncome
    FROM DimCustomer
    GROUP BY Gender
) AS GenderIncome
ORDER BY AvgIncome DESC;


--Car Ownership and Income
SELECT 
    NumberCarsOwned,
    AVG(YearlyIncome) AS AvgIncome,
    COUNT(*) AS TotalCustomers
FROM DimCustomer
GROUP BY NumberCarsOwned
ORDER BY NumberCarsOwned;
