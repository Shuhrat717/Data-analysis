# 📊 Executive Summary

## Total Sales  
```dax
Total Sales = SUM(FactInternetSales[SalesAmount])
```

## Total Orders  
```dax
Total Orders = DISTINCTCOUNT(FactInternetSales[SalesOrderNumber])
```

## Total Customers  
```dax
Total Customers = DISTINCTCOUNT(FactInternetSales[CustomerKey])
```

## Average Order Value  
```dax
Avg Order Value = DIVIDE([Total Sales], [Total Orders])
```

## Year-over-Year Growth %  
```dax
YoY Growth % =
VAR Curr = [Total Sales]
VAR Prev =
    CALCULATE(
        [Total Sales],
        SAMEPERIODLASTYEAR(DimDate[FullDateAlternateKey])
    )
RETURN
    DIVIDE(Curr - Prev, Prev)
```

## Cumulative Sales  
```dax
Cumulative Sales =
CALCULATE(
    [Total Sales],
    FILTER(
        ALLSELECTED(DimDate),
        DimDate[FullDateAlternateKey] <= MAX(DimDate[FullDateAlternateKey])
    )
)
```

---

# 📈 Sales Trend

## Sales by Month  
```dax
Sales by Month = [Total Sales]
```

## Running Total Sales  
```dax
Running Total Sales =
CALCULATE(
    [Total Sales],
    FILTER(
        ALLSELECTED(DimDate),
        DimDate[FullDateAlternateKey] <= MAX(DimDate[FullDateAlternateKey])
    )
)
```

---

# 👥 Customer Analysis

## Customer Age (Calculated Column)  
```dax
Age = DATEDIFF(DimCustomer[BirthDate], TODAY(), YEAR)
```

## Age Group Buckets (Calculated Column)  
```dax
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
```

---

# 🛒 Product Analysis

## Top 10 Products by Sales  
```dax
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
```
