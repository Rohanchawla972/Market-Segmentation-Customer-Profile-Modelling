# Customer Segmentation — Marketplace Supermarket

## Repository Structure

- `README.md` — Project overview, dataset, methodology, and results  
- `Customer-Segmentation-Report.pdf` — Final detailed report with analysis and recommendations  
- `Dataset.csv` — Raw dataset used for segmentation analysis   
- `LICENSE` — License information (MIT)  

## Project Overview
This project segments customers of Marketplace Supermarket to identify distinct groups and develop tailored marketing strategies. The analysis was conducted using **SPSS** with Two-Step Cluster Analysis, ANOVA, and Chi-Square tests. The objective was to generate actionable insights that enhance customer satisfaction, increase loyalty, and drive revenue growth.

---

## Dataset
The dataset contained demographic, behavioral, and transactional information, including:

- **Demographics:** Age, Education, Marital Status, Income  
- **Household composition:** Presence of children or teenagers  
- **Purchase behavior:** Number of store vs. online purchases, campaign acceptance, complaints  
- **Spending:** Monthly product expenditure  

> Note: The dataset is proprietary to coursework. A small synthetic sample with the same structure is provided in `/data/` for demonstration purposes.

---

## Methodology
1. **Data Cleaning**  
   - Removed outliers in Age variable (values >120).  
   - Recoded categorical variables into scale form to ensure balanced contribution to clustering.

2. **Clustering**  
   - Conducted Two-Step Cluster Analysis using Age, Income, Spending, Online Purchases, and TeenHouseholds.

3. **Statistical Validation**  
   - **ANOVA** confirmed significant differences across Age, Income, Spending, and Online Purchases.  
   - **Chi-Square** confirmed a significant association between TeenHouseholds and customer segments.

---

## Customer Segments Identified
1. **Family-Focused Spenders (47.9%)**  
   - Middle-aged, moderate income and spending, presence of teenagers in the household.  
   - **Strategy:** Loyalty programs, bundle discounts, family-oriented promotions.

2. **Wealthy Professionals (26.1%)**  
   - High-income, highest overall spending, frequent online shoppers, no teenagers in household.  
   - **Strategy:** Premium product lines, personalized offers, VIP services.

3. **Budget-Conscious Youth (26.0%)**  
   - Younger, low-income, minimal spending and online activity.  
   - **Strategy:** Flash sales, affordable bundles, targeted social media campaigns.

---

## Key Results
- Identified three distinct and statistically significant customer segments.  
- Developed targeted marketing strategies tailored to each group.  
- Provided a framework for Marketplace to improve customer engagement and loyalty through data-driven decision making.

---

## Implementation
The analysis was carried out in **SPSS** using a graphical workflow.  

- **Clustering method:** Two-Step Cluster Analysis  
- **Validation methods:** ANOVA and Chi-Square tests  
- R/Python implementations were not included for this project but can be considered for future automation.

---

## Skills and Tools
- Customer segmentation and clustering  
- Data cleaning and preparation  
- SPSS (Two-Step Cluster, ANOVA, Chi-Square)  
- Marketing strategy development based on analytics  

---

## Deliverables
- Full report: `/reports/Report.pdf`  
- Methodology notes: `/docs/methodology.md`  
- Sample dataset: `/data/sample.csv`


