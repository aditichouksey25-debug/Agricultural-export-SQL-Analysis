Agriculture Export Trade Analysis Using SQL

## Project Overview

This project analyzes agricultural export trade data using SQL to uncover trends in export value, export quantity, commodity performance, and international trade patterns. The analysis focuses on understanding how agricultural commodities contribute to export earnings and identifying key export destinations.

The project demonstrates practical SQL skills including data exploration, aggregation, filtering, grouping, sorting, and calculation of business-relevant trade metrics.

## Business Problem

Agricultural exports are an important source of foreign exchange earnings and market opportunities. Understanding export performance helps policymakers, researchers, and agribusiness firms identify key commodities and export markets.

This project addresses the following questions:

- Which commodities generate the highest export value?
- Which countries are major export destinations?
- How do export quantities and trade values compare across commodities?
- What is the export value realized per kilogram of product?

## Data Source

Source: United Nations Comtrade Database (UN Comtrade)

The dataset was downloaded from the UN Comtrade international trade database and imported into PostgreSQL for analysis.

## Dataset Description

The dataset contains agricultural export records with variables such as:

- Year
- Commodity
- Partner Country
- Quantity (Kg)
- Trade Value (USD)
- Unit of Measurement

### Commodities Analyzed

- Rice
- Soybean

## Tools & Technologies

- PostgreSQL
- SQL
- CSV Files
- GitHub

## Database Design

**Table Name:** `export`

The dataset was imported from CSV format and prepared for SQL-based analysis.

## SQL Skills Demonstrated

- Data Retrieval (SELECT)
- Filtering (WHERE)
- Aggregation (SUM, AVG, COUNT)
- Grouping (GROUP BY)
- Ranking and Sorting (ORDER BY)
- Conditional Analysis (HAVING)
- Derived Metrics Calculation

## Analysis Performed

### 1. Data Exploration
- Inspected dataset structure
- Validated imported records

### 2. Commodity Analysis
- Total export value by commodity
- Export quantity comparison

### 3. Country-wise Export Analysis
- Identification of leading export destinations
- Ranking countries by export value

### 4. Value per Kilogram Analysis
- Calculation of export value per kilogram
- Commodity price comparison

### 5. Trade Performance Assessment
- Comparison of export earnings across commodities and destinations

## Sample SQL Query

```sql
SELECT commodity,
       SUM(trade_value) AS total_trade_value
FROM export
GROUP BY commodity
ORDER BY total_trade_value DESC;
```

## Key Findings

 Total export trade value for both Rice and Soybean increased from 2019 to 2020, indicating growth in agricultural export performance during the period analyzed.
- Rice generated a higher total export value than Soybean, making it the leading commodity in the dataset.
- Saudi Arabia was the largest export destination for Rice based on total trade value, while the United States ranked tenth among the top Rice importers.
- Canada was the leading export destination for Soybean based on total trade value, while the United Kingdom ranked tenth among Soybean importers.
- The average export value per kilogram for Rice was **USD 0.55/kg**, while Soybean recorded **USD 0.70/kg**.
- Although Rice generated higher overall export earnings, Soybean achieved a higher value per kilogram, indicating stronger unit value in international markets.
- Based on country-level value-per-kilogram analysis, Brazil ranked first and Nigeria ranked tenth, highlighting differences in export value realization across trading partners.
- Among the top 10 countries ranked by export value per kilogram, Saint Lucia recorded the highest value at **USD 2.12/kg**, while Peru ranked tenth at **USD 1.33/kg**.
- For Rice, the highest average trade value was recorded in **2024**, followed by **2022, 2023, 2021, 2020, and 2019**.
- For Soybean, the ranking of average trade value by year was **2019, 2022, 2020, 2023, 2021, and 2024**.
- The analysis revealed distinct trade patterns between Rice and Soybean in terms of export value, market destinations, pricing efficiency, and year-wise performance.
- SQL-based analysis effectively identified key export markets, commodity performance trends, and value realization opportunities in agricultural trade data.

## Project Outcomes

This project strengthened practical skills in:

- SQL Query Writing
- Agricultural Trade Analysis
- Data Cleaning and Validation
- Business Insight Generation
- GitHub Documentation

## Future Enhancements

- Interactive Power BI Dashboard
- Python (Pandas) Analysis
- Export Trend Visualization
- Forecasting and Predictive Analytics

## Author

**Aditi Chouksey**

Agricultural Economics | Data Analytics | SQL | Power BI | Python
