
# 📊 HR Analytics Dashboard  

## 📘 Overview  
This project is built on the IBM HR Attrition dataset and provides insights into **Employee Attrition** and **Diversity & Inclusion**. The dashboard helps HR teams analyze workforce composition, attrition patterns, and employee demographics in an interactive way.  

---

## 📂 Dataset  
- **Source:** [IBM HR Analytics Attrition Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)  
- **Key Columns:**  
  - Demographics: Age, Gender, MaritalStatus, Education, EducationField  
  - Job-related: Department, JobRole, Overtime, MonthlyIncome, YearsAtCompany  
  - HR indicators: Attrition (Yes/No), JobSatisfaction, WorkLifeBalance  

---

## 📑 Dashboard Pages  

### 🟥 Attrition Analysis  
- KPI Cards:  
  - Total Employees  
  - Attrition %  
  - Avg Age  
  - Avg Salary  
- Bar Chart → Attrition by Department  
- Bar Chart → Attrition by JobRole  
- Clustered Column → Attrition by Overtime  
- Line Chart → Attrition Trend (YearsAtCompany)  

### 🟦 Diversity & Inclusion  
- Donut Chart → Gender Ratio  
- Bar Chart → Employees by Age Group  
- Stacked Bar → Department + Gender  
- Pie Chart → Marital Status  
- Column Chart → Education Levels  

---

## 🛠 Tools & Technologies  
- **MS SQL Server** → Data storage & preparation  
- **Python (Pandas, Seaborn, Scikit-learn)** → EDA & correlation analysis  
- **Power BI (DAX, Visualization)** → Interactive dashboards  
- **GitHub** → Code & documentation management, project portfolio  

---

## 📈 Key Insights  
- Highest attrition is observed among **Sales Executives** and **Laboratory Technicians**.  
- Employees doing **Overtime** show higher attrition rates.  
- Majority of employees fall in the **25–44 age group**.  
- Gender ratio: **60% Male, 40% Female**.  
- Marital status distribution: **Married (46%)**, **Single (32%)**, **Divorced (22%)**.  

---

## 🚀 Next Steps  
- Predictive Analytics → Use ML models to predict high-risk employees for attrition.  
- Implement **Row-Level Security (RLS)** for HR dashboards.  
- Add more KPIs → JobSatisfaction, WorkLifeBalance, Performance vs Attrition.  

---

👉 Additional Docs:  
- [Project Overview](./doc/project_overview.md)  

