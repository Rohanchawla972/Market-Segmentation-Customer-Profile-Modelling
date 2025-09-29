# MultiChannel-Gift-Analysis

Customer analytics project for a multichannel gift retailer using the **DMEF dataset (2001–2007)**.  
The project applies advanced statistical and machine learning techniques to analyze **channel loyalty, trade area impact, customer segmentation, and seasonal purchasing trends** across Internet and Catalog channels.  

---

## Objectives
- Understand **channel loyalty** and switching behavior between Internet and Catalog customers.  
- Quantify the **impact of trade area variables** (distance to store, demographics) on purchasing.  
- Segment customers into meaningful groups for **targeted marketing strategies**.  
- Identify **seasonal trends** in gift purchasing behavior.  
- Develop predictive models for **retention, choice modeling, and RFM-based scoring**.  

---

## Dataset
- Source: **Direct Marketing Educational Foundation (DMEF)**  
- Period: **2001–2007**  
- Size: **135,000+ customers**, **100+ variables**  
- Key Features:  
  - **Demographics:** Income, Age, Education, Trade Area Distance  
  - **Transaction Data:** Internet vs Catalog gift dollars, number of orders, gift recipients  
  - **Behavioral:** Seasonal gifting counts, channel switching behavior  
  - **Derived Variables:** RFM metrics, customer loyalty indicators  

---

## Methodology & Techniques
- **Exploratory Data Analysis (EDA):** Outlier detection, distribution checks, seasonal patterns.  
- **Clustering:** K-means for customer segmentation based on gift spending and behavior.  
- **Regression Analysis:**  
  - Logistic Regression → Channel loyalty drivers  
  - Multinomial Regression → Choice modeling for channel preference  
- **RFM Analysis:** Customer scoring framework (Recency, Frequency, Monetary).  
- **Trade Area Analysis:** Impact of store distance and demographics.  

---

## Key Deliverables
- **Data Cleaning & Preprocessing** (`Code.qmd`)  
- **EDA Outputs:** Seasonal purchase patterns, channel comparisons  
- **Clustering Results:** Buyer personas (e.g., High-Value Gifters, Occasional Gifters)  
- **Regression Models:** Drivers of loyalty & switching  
- **Choice Model Results:** Multinomial logit outputs  
- **Final Report:** `MultiChannel-GiftCompany-Analytics.pdf`  
- **Presentation Slides:** `Multi channel analysis presentation.pdf`  

---

## Insights
- **High-value gifters** are more loyal to the Catalog channel but sensitive to trade area distance.  
- **Internet channel adoption** grew over time, driven by convenience and younger demographics.  
- **Customer segmentation** revealed three core personas:  
  - 📦 Consistent Gifters (loyal, high spenders)  
  - 🎁 Seasonal Gifters (active mainly during Christmas)  
  - 💤 Low-Engagement Customers (minimal activity, churn risk)  
- **Choice models** confirmed catalog loyalty was strongly influenced by **RFM metrics** and demographics.  

---

## Tools & Libraries
- **R (Quarto, RMarkdown)** → Analysis, Visualization, Modeling  
- **tidyverse (dplyr, ggplot2, tidyr)** → Data wrangling & visualization  
- **cluster, factoextra** → Segmentation & clustering validation  
- **nnet, caret** → Logistic & multinomial regression models  

---

## License
This project is licensed under the MIT License.  

---

## Author
Developed by **Rohan Chawla**

