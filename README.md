# Ingredient-Safety-Product-Composition-Analysis-Cosmetics-
Examine the prevalence of EU-restricted and potentially harmful substances (CMR) in cosmetic products available on the market


🧴 End-to-End Data Analytics Project
Ingredient Safety & Product Composition Analysis ________________________________________
📌 Project Overview
This project is an End-to-End Data Analytics project focused on the cosmetics industry, with a strong emphasis on regulatory affairs and product safety.
The objective is to analyze cosmetic products and their ingredients to:
•	Identify the presence of restricted ingredients and CMR substances
•	Assess regulatory risks across product types and brands
•	Extract market insights to support regulatory decision-making
This project was completed as the final project of a Data Analytics Bootcamp and is designed to be portfolio-ready for roles in Regulatory Affairs / Safety / Compliance Data Analytics within the cosmetics industry.
________________________________________
🎯 Business Objective
Analyze cosmetic products and their ingredients to identify the presence of restricted ingredients and regulatory risks (CMR substances), trends across product types, and market insights to support decision-making in regulatory affairs.
________________________________________
🗂️ Datasets Used
1. CosIng Annex III – Restricted Ingredients
•	Source: EU CosIng database
Key fields:
•	Restricted cosmetic ingredients
•	CMR classification
•	Authorized product types
Shape: 375 rows × 16 columns
________________________________________
2. Sephora Product & Ingredient Data
•	Large-scale market dataset
•	Product-level commercial and consumer metrics
Key fields:
•	Product name, brand, product type
•	Ingredient list
•	Price, rating, reviews, loves count
Shape: 8494 rows × 27 columns
________________________________________
3. Skincare Products Dataset
•	Focused dataset for skincare analysis
Key fields:
•	Brand, product name
•	Product type
•	Ingredient
•	Price, rank
Shape: 1472 rows × 11 columns
________________________________________
🛠️ Tools & Technologies
•	Python (Pandas, NumPy) – data preparation & feature engineering
•	MySQL Workbench – data storage & SQL analysis
•	Tableau – dashboards & data visualization
•	GitHub – version control & portfolio hosting
________________________________________
🔄 Project Workflow (End-to-End)
Step 1 – Project Planning
•	Defined a regulatory-focused business problem
•	Selected datasets aligned with cosmetics compliance
•	Structured the project according to Case Study 2: Data Analytics
________________________________________
Step 2 – Data Understanding
•	Explored ingredient distributions
•	Analyzed product types and market coverage
•	Identified CMR and restricted ingredient indicators
________________________________________
Step 3 – Data Preparation & Feature Engineering (Python)
•	Matched product ingredients with CosIng restricted ingredients
•	Engineered regulatory risk indicators:
o	has_restricted_ingredient
o	restricted_ingredient_count
o	has_cmr
o	cmr_count
•	Aggregated data at product level
________________________________________
Step 4 – Statistical Analysis
•	Measured prevalence of restricted and CMR substances
•	Compared regulatory risk across:
o	Product types
o	Brands
o	Market segments
•	Evaluated market impact (price, rating, consumer engagement)
________________________________________
Step 5 – SQL Database Creation (MySQL)
•	Created structured tables:
o	sephora_products
o	skincare_products
•	Stored engineered regulatory indicators
•	Prepared data for scalable querying and BI tools
________________________________________
Step 6 – SQL Analysis (Regulatory Insights)
Key analyses included:
•	Market-wide regulatory risk exposure
•	Product types with highest compliance risk
•	Brands with the most restricted and CMR ingredients
•	Products with highest regulatory severity
•	Relationship between regulatory risk and:
o	Price
o	Consumer ratings
o	Popularity metrics
________________________________________
Step 7 – Data Visualization (Tableau)
Built interactive dashboards connected directly to MySQL:
Dashboards:
1.	Regulatory Risk Overview
2.	Product Type Regulatory Risk
3.	Brand-Level Regulatory Exposure
4.	Market Impact of Regulatory Risk
5.	Skincare-Specific Regulatory Analysis
Each dashboard supports decision-making in regulatory affairs.
________________________________________
📊 Key Insights
•	Certain product types show significantly higher regulatory risk
•	A limited number of brands account for a large share of restricted ingredients
•	Presence of restricted ingredients does not always correlate negatively with consumer ratings
•	CMR substances represent high-priority compliance risks requiring monitoring
________________________________________
🚀 Career Relevance
This project demonstrates:
•	Strong SQL and data analytics skills
•	Practical application in cosmetics regulatory affairs
•	Ability to translate data into compliance insights
•	End-to-end ownership of a real-world analytics pipeline
________________________________________
📌 Author
Zina BABACI
Data Analyst | Regulatory Affairs & Cosmetics Safety
Bootcamp Final Project

