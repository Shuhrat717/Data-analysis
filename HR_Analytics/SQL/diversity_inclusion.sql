--Gender Distribution
SELECT 
    Gender,
    COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Gender;


--Age Group Distribution
SELECT 
    CASE 
        WHEN Age < 25 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END AS AgeGroup,
    COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY CASE 
        WHEN Age < 25 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Age BETWEEN 55 AND 64 THEN '55-64'
        ELSE '65+'
    END
ORDER BY AgeGroup;


--Department + Gender Diversity

SELECT 
    Department,
    Gender,
    COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department, Gender
ORDER BY Department, Gender;


--Marital Status Distribution
SELECT 
    MaritalStatus,
    COUNT(*) AS EmployeeCount,
    CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS DECIMAL(5,2)) AS Percentage
FROM Employee
GROUP BY MaritalStatus
ORDER BY EmployeeCount DESC;
