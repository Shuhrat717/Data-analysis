**Executive Summary**

-- Total sales amount 
Total Sales = SUM(FactInternetSales[SalesAmount])

-- Number of orders
Total Orders = DISTINCTCOUNT(FactInternetSales[SalesOrderNumber])

-- Number of unique customers
Total Customers = DISTINCTCOUNT(FactInternetSales[CustomerKey])

-- Average order value
Avg Order Value = DIVIDE([Total Sales], [Total Orders])

-- Year-over-Year Growth %
YoY Growth % =
VAR Curr = [Total Sales]
VAR Prev = CALCULATE([Total Sales], SAMEPERIODLASTYEAR(DimDate[FullDateAlternateKey]))
RETURN DIVIDE(Curr - Prev, Prev)

-- Cumulative sales
Cumulative Sales =
CALCULATE(
    [Total Sales],
    FILTER(
        ALLSELECTED(DimDate),
        DimDate[FullDateAlternateKey] <= MAX(DimDate[FullDateAlternateKey])
    )
)

**Sales Trend**

-- Sales by Month
Sales by Month = [Total Sales]

-- Running Total Sales
Running Total Sales =
CALCULATE(
    [Total Sales],
    FILTER(
        ALLSELECTED(DimDate),
        DimDate[FullDateAlternateKey] <= MAX(DimDate[FullDateAlternateKey])
    )
)

**Customer Analysis**

-- Customer Age (calculated column)
Age = DATEDIFF(DimCustomer[BirthDate], TODAY(), YEAR)

-- Age Group Buckets (calculated column)
Age Group =
SWITCH(
    TRUE(),
    DimCustomer[Age] < 25, "18-24",
    DimCustomer[Age] < 35, "25-34",
    DimCustomer[Age] < 45, "35-44",
    DimCustomer[Age] < 55, "45-54",
    DimCustomer[Age] < 65, "55-64",
    "65+"
)

**Product Analysis**

-- Top 10 Products by Sales
Top 10 Products =
TOPN(
    10,
    SUMMARIZE(
        FactInternetSales,
        DimProduct[EnglishProductName],
        "Sales", [Total Sales]
    ),
    [Sales],
    DESC
)
