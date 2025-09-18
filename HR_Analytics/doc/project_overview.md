# Project Overview -- HR Analytics Dashboard

## 📊 Project Objective

The goal of this project is to analyze employee attrition, diversity &
inclusion, and recruitment funnel metrics to provide actionable HR
insights for data-driven decision-making.

------------------------------------------------------------------------

## 🔹 Data Sources

-   **IBM HR Attrition Dataset (Kaggle)** -- Main dataset for employee
    information and attrition.
-   **Synthetic Recruitment Dataset** -- Created to simulate recruitment
    funnel stages (Applications → Shortlisted → Interviews → Offers →
    Hires).

------------------------------------------------------------------------

## 🔹 Tools & Technologies

-   **MS SQL Server** → Data storage, cleaning, and aggregations.\
-   **Python (Pandas, Matplotlib, Seaborn, Scikit-learn)** → Exploratory
    Data Analysis (EDA), correlation heatmaps, feature importance, and
    optional machine learning modeling.\
-   **Power BI** → Dashboard design and visualization.\
-   **GitHub** → Documentation and version control.

------------------------------------------------------------------------

## 🔹 Project Modules

### 🟥 Module 1: Employee Attrition Analysis

**Data Fields:** Age, Gender, Department, JobRole, MonthlyIncome,
Overtime, JobSatisfaction, Attrition.\
**KPIs & Insights:** - Attrition Rate (%) - Attrition by Department /
Job Role - Attrition by Salary Band - Overtime vs Attrition -
Correlation heatmap (Python)

**Visuals in Power BI:** - KPI Cards (Attrition %, Total Employees, Avg
Age, Avg Salary)\
- Bar Charts (Attrition by Department, Job Role)\
- Line Chart (Attrition Trend by Years at Company)

------------------------------------------------------------------------

### 🟦 Module 2: Diversity & Inclusion Analysis

**Data Fields:** Gender, Age, Education, JobLevel, MaritalStatus,
YearsAtCompany.\
**KPIs & Insights:** - Gender Ratio\
- Average Age & Age Group distribution\
- Employee Distribution by Education\
- Job Level Diversity

**Visuals in Power BI:** - Donut Chart (Gender Ratio)\
- Histogram (Age Groups)\
- Bar Chart (Employees by Education)\
- Pie Chart (Marital Status)

------------------------------------------------------------------------

### 🟩 Module 3: Recruitment Funnel Analysis

**Data Fields:** Applications Received, Shortlisted, Interviews, Offers,
Hires.\
**KPIs & Insights:** - Conversion Rates (Applications → Hires)\
- Average Time to Hire\
- Drop-off by Funnel Stage

**Visuals in Power BI:** - Funnel Chart (Applications → Interviews →
Offers → Hires)\
- KPI Cards (Avg Time to Hire, Total Applications)\
- Line Chart (Monthly Recruitment Trend)

------------------------------------------------------------------------

## 🔹 Project Workflow

1.  Load datasets into **SQL Server**.\
2.  Perform data cleaning and aggregations using **SQL queries**.\
3.  Conduct EDA in **Python** (correlation analysis, feature importance,
    optional ML).\
4.  Build **Power BI dashboards** (3 pages for Attrition, Diversity &
    Inclusion, Recruitment Funnel).\
5.  Document the process in **GitHub** (README, Project Overview, DAX
    Measures).

------------------------------------------------------------------------

## 🔹 Final Deliverables

-   **SQL Scripts** -- Data cleaning and transformations.\
-   **Python Scripts/Notebooks** -- EDA, feature importance, optional
    predictive model.\
-   **Power BI Dashboards** -- 3 modules (Attrition, Diversity &
    Inclusion, Recruitment Funnel).\
-   **Documentation** -- README.md, project_overview.md,
    dax_measures.md.

------------------------------------------------------------------------

👉 This project provides HR professionals and business leaders with
clear, data-driven insights to improve employee retention, strengthen
diversity initiatives, and optimize recruitment strategies.
