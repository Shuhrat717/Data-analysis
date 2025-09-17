# 📘 Project Overview – Power BI Sales Analysis Dashboard

## 🎯 Objective
The goal of this project is to design an **interactive Power BI dashboard** that provides insights into:
- Sales performance  
- Customer behavior  
- Product trends  
- Promotion effectiveness  

The dashboard is built on the **AdventureWorks dataset**, which simulates a real-world retail sales environment.

---

## 📂 Dataset
This project uses the **AdventureWorksDW** data warehouse, including the following key tables:

- **FactInternetSales** → sales transactions (amount, order details, promotion keys)  
- **DimDate** → calendar dates for time intelligence (year, month, quarter)  
- **DimCustomer** → customer demographics (age, gender, marital status, geography)  
- **DimProduct / DimProductCategory / DimProductSubcategory** → product hierarchy  

---

## 📑 Dashboard Pages

### 1️⃣ Executive Summary
- **KPI Cards**:  
  - Total Sales  
  - Total Orders  
  - Total Customers  
  - YoY Growth %  
- Overview of company-wide performance  

### 2️⃣ Sales Trend
- **Line Chart** → Sales by Month and Year  
- **Running Total** → Track cumulative sales growth  

### 3️⃣ Customer Analysis
- **Map** → Sales by Geography  
- **Bar Chart** → Sales by Age Group and Gender  
- **Donut Chart** → Sales by Marital Status  

### 4️⃣ Product Analysis
- **TreeMap** → Sales by Category & Subcategory  
- **Bar Chart** → Top 10 Products by Sales  

---

## 🛠️ Key Features
- Built with **Power BI Desktop**  
- Uses **DAX measures** for calculations (see [`dax_measures.md`](./dax_measures.md))  
- Applied **time intelligence** (YoY growth, running totals)  
- Created **customer segmentation** (age groups, gender, marital status)  

---

## 📈 Insights & Outcomes
- Clear view of **sales growth over time**  
- Identification of **top-performing products and categories**  
- Understanding of **customer demographics driving revenue**  

---

## 🚀 Next Steps
- Deploy to **Power BI Service** for sharing and collaboration  
- Add **Row-Level Security (RLS)** for role-based access  
- Enhance with **forecasting and predictive analytics** in future iterations  
