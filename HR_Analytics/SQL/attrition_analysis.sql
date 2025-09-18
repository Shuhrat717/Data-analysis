--Overall Attrition Summary

SELECT 
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS AttritionRate
FROM Employee;


--Attrition by Department

SELECT 
    Department,
    COUNT(*) AS Total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS AttritionRate
FROM Employee
GROUP BY Department
ORDER BY AttritionRate DESC;

--Attrition by Overtime

SELECT 
    OverTime,
    COUNT(*) AS Total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS AttritionRate
FROM Employee
GROUP BY OverTime;

