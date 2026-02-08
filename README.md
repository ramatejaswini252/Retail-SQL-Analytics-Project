# Retail-SQL-Analytics-Project
SQL project for retail store operations and sales analysis

📌 Project Overview

This project demonstrates the design and analysis of a Retail Store database using SQL.
It simulates real-world retail operations such as product sales, customer transactions, store performance, and staff activity.

The project is aimed at showcasing SQL skills required for Data Analyst, Business Analyst, and SQL Developer roles.

🎯 Business Objective

To analyze retail sales data in order to:

Identify high-performing stores and products

Understand customer purchasing behavior

Track revenue trends over time

Evaluate staff performance

Support business decision-making using SQL queries

🛠 Tools & Technologies

MySQL

MySQL Workbench

CSV Files for data import

GitHub for version control

🗃 Database Schema

The database consists of 5 tables:

stores – store information

products – product catalog and pricing

customers – customer contact and identity data

staff – sales staff details

sales – transaction records

All tables are connected using primary and foreign keys to maintain data integrity.

📂 Project Structure

Retail-SQL-Analytics-Project

schema.sql
queries.sql
README.md
data/
    ─ stores.csv, 
     ─ products.csv,
    ─ customers.csv,
    ─ staff.csv,
    ─ sales.csv

📥 Data Load

All data is loaded using CSV file imports instead of manual INSERT statements, simulating real-world ETL processes.
This improves scalability and reflects how actual business databases are populated.

📊 Key Business Queries Implemented

Top 3 Customers by Total Purchase Value

Store with Highest Revenue

Average Order Value per Store

Monthly Revenue Trends

Products Generating Above-Average Revenue

Customers Purchasing Multiple Categories

Staff Handling Multiple Sales

Stores with No Sales

High-Value vs Low-Value Stores

Revenue by Product Category

📈 Business Insights Generated

Identified best performing stores and underperforming ones

Found customer segments for targeted marketing

Discovered premium vs volume-driven stores

Highlighted products contributing most to revenue

Provided actionable insights for management decisions

▶ How to Run This Project

Clone or download the repository

Execute schema.sql in MySQL Workbench

Import all CSV files into respective tables

Run queries from queries.sql

Analyze outputs and insights

💡 Why This Project Matters

This project simulates a real business scenario and demonstrates:

Practical SQL usage

Relational database design

Business-driven analytics

Data-driven thinking

End-to-end project ownership


🚀 Future Enhancements

Add indexes for performance optimization

Introduce views and stored procedures

Implement triggers for automation

Integrate with Power BI or Tableau

Add real-time data updates

👤 Author

Developed by: Rama

