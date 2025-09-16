# Customer Shopping Trends Analysis & Power BI Dashboard

## Project Overview

This project presents a comprehensive end-to-end data analysis of customer shopping trends. The goal was to derive actionable insights from a raw dataset by performing a series of data preparation and analysis steps. The process involved defining key business questions, extensive data cleaning and normalization in a PostgreSQL database, feature engineering, and finally, building a dynamic, multi-page interactive dashboard in Power BI.

This repository showcases a complete workflow, from initial data exploration to the final polished business intelligence report, including a mobile-friendly view.

---

## 📊 Power BI Dashboard Preview

## 📊 Power BI Dashboard Preview

The final output of this project is a comprehensive, four-page interactive report built in Power BI. Each page is designed to answer a specific set of business questions, providing a holistic view of customer behavior and business performance. Below are snapshots of each dashboard page.

| Customer Snapshot                                                                                                   | Product & Category Deep Dive                                                                                                     |
| :------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------: |
| ***![Customer Snapshot](customer_snapshot.png)*** | ***(placeholder: ADD PRODUCT ANALYSIS IMAGE)*** |
| *An overview of customer demographics, including breakdowns by age group and gender, and their associated purchasing habits.* | *Analysis of product popularity, average review ratings by category, and a matrix showing seasonal sales trends.* |
| **Geographic & Shipping Analysis** | **Financial & Promotions Performance** |
| ***(placeholder: ADD GEOGRAPHIC ANALYSIS IMAGE)*** | ***(placeholder: ADD FINANCIAL PERFORMANCE IMAGE)*** |
| *A breakdown of the top customer locations and an analysis of preferred shipping methods.* | *Key KPIs on the effectiveness of subscriptions and discounts, along with insights into the most popular payment methods.* |

---
### **How to add your images:**
1.  Take a screenshot of each of the four pages of your dashboard.
2.  Upload the four image files (e.g., `customer_snapshot.png`, `product_analysis.png`, etc.) to your GitHub repository.
3.  Replace each `(placeholder: ...)` line above with the markdown code for your image, like this: `![Customer Snapshot](customer_snapshot.png)`

## 📂 Repository Structure

* **/Data**: Contains the raw dataset (`shopping_trends.csv`).
* **/SQL_Queries**: Includes all PostgreSQL scripts used for data cleaning, normalization, and feature engineering.
* **/Power_BI_Report**: Contains the final Power BI project file (`.pbix`) and a PDF export of the report.
* `README.md`: This file, explaining the project in detail.

---

## 🛠️ Project Workflow & Methodology

The project was executed in five key phases, transforming raw data into actionable business intelligence.

### 1. Defining Business Questions

The analysis was guided by a set of key business questions aimed at understanding customer behavior and business performance:
* Who are the most valuable customers?
* How does purchasing behavior differ across various customer segments?
* What are the best-selling product categories?
* Is there a relationship between review ratings and sales?
* Which payment methods and shipping types are most popular?
* Does a subscription or the use of discounts impact customer loyalty?

### 2. Data Cleaning & Preparation (PostgreSQL)

The raw CSV data was first loaded into a PostgreSQL database. The initial cleaning and preparation phase involved:
* **Handling Inconsistencies:** Standardized categorical data, such as merging 'Bi-Weekly' and 'Fortnightly' into a single 'Fortnightly' category.
* **Data Type Validation:** Ensured all columns had the correct data type (e.g., converting purchase amounts to `NUMERIC`).
* **Duplicate & NULL Value Checks:** Verified the integrity of the data by checking for duplicate records and missing values.

### 3. Database Normalization (Star Schema)

To create a robust and efficient data model, the main table was normalized into a **star schema**:
* **Fact Table:** The central `shopping_trend` table was established as the fact table, containing quantitative transactional data.
* **Dimension Tables:** Several dimension tables were created to store descriptive, categorical data, including `Categories`, `Locations`, `PaymentMethods`, and `ShippingTypes`.
* **Keys & Relationships:** Primary keys were created for all dimension tables, and these were linked to the fact table using foreign keys, establishing clear relationships.

### 4. Feature Engineering

To enable deeper analysis, new features were engineered from the existing data:
* **Age Group Creation:** An `age_group` column was created using a `CASE` statement in SQL to segment customers into meaningful categories (e.g., '18-25 (Young Adult)', '26-35 (Adult)'), which proved crucial for analyzing purchasing habits across different demographics.

### 5. Data Analysis & Visualization (Power BI)

The cleaned and structured data was connected to Power BI to build the final report.
* **Data Modeling:** The star schema created in PostgreSQL was replicated in the Power BI data model, connecting the fact and dimension tables.
* **DAX Measures:** Powerful DAX (Data Analysis Expressions) measures were created to perform key calculations, such as `[Total Customers]`, `[Avg Previous Purchases]`, and conditional measures to compare subscribers vs. non-subscribers.
* **Interactive Dashboard:** A four-page interactive report was designed to explore the data from different perspectives:
    1.  **Customer Snapshot:** An overview of customer demographics and habits.
    2.  **Product & Category Deep Dive:** Analysis of product popularity, ratings, and seasonality.
    3.  **Geographic & Shipping Analysis:** Insights into regional markets and shipping preferences.
    4.  **Financial & Promotions Performance:** KPIs on payment methods and the effectiveness of subscriptions and discounts.
* **Mobile View:** A custom, scrollable mobile layout was designed for each page, ensuring the report is accessible and user-friendly on any device.

---

## 💻 Tools & Technologies

* **Database:** PostgreSQL
* **Database Management:** pgAdmin
* **Business Intelligence & Visualization:** Microsoft Power BI
* **Language:** SQL, DAX

---

## 🚀 How to Use This Repository

1.  **Restore the Database:** Use the scripts in the `/SQL_Queries` folder to create and populate the database in your own PostgreSQL instance.
2.  **View the Report:** Open the `.pbix` file in the `/Power_BI_Report` folder using Power BI Desktop. You may need to update the data source credentials to connect to your local database.
3.  **Explore the Data:** The raw CSV is available in the `/Data` folder.
