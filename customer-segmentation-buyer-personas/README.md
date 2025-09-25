# Mall Customer Segmentation (Clustering Analysis)

This project applies **K-Means clustering** to a mall customer dataset in order to segment customers into meaningful groups and design actionable **buyer personas**. The analysis is based on demographic and behavioral features such as age, income, family size, recency, spending, and online engagement.

---

## Project Overview
- **Goal:** Segment customers into distinct groups using clustering techniques.  
- **Dataset:** [`marketing_campaign.csv`](./Dataset.csv) (from Kaggle).  
- **Methods:**  
  - Feature engineering (Age, FamilySize, TotalSpend).  
  - Correlation analysis to validate variable selection.  
  - K-Means clustering with multiple values of k.  
  - Evaluation using visualization and elbow method.  
  - Buyer personas built from cluster characteristics.  

---

## Key Steps
1. **Feature Engineering**  
   - `Age` = Current Year − Year_Birth  
   - `FamilySize` = 1 + Kidhome + Teenhome  
   - `TotalSpend` = Sum of spending across product categories  

2. **Clustering Analysis**  
   - Standardized selected features  
   - K-Means with k = 2, 3, 4, 5  
   - Visualized clusters using `factoextra`  

3. **Cluster Evaluation**  
   - Compared separation and interpretability across k values  
   - Elbow Method used to identify the optimal number of clusters (k ≈ 3)  

4. **Buyer Personas**  
   - Developed personas such as *Budget-Conscious Brian* and *Value-Driven Helen* based on cluster means.  

---

## Results
- **k = 2**: Clear separation of high-value vs. low-value customers  
- **k = 3**: Best trade-off between clarity and detail  
- **k = 4/5**: More variation captured, but clusters overlapped  
- **Optimal k**: 3 (Elbow Method + interpretability)  

---

## Repository Structure
```
├── marketing_campaign.csv # Dataset
├── mall_customer_segmentation.R # R script with full analysis
├── README.md # Project documentation
```

---

## Tools & Libraries
- **R**: tidyverse, cluster, factoextra, corrplot  
- **Methods**: K-Means clustering, Elbow Method, correlation analysis  

---

## Insights
- Customers can be segmented into **budget-sensitive**, **value-driven**, and **mid-tier** groups.  
- Buyer personas enable **targeted marketing**: loyalty programs for high-value customers, digital promotions for younger online-engaged customers, and discount-driven campaigns for budget-conscious shoppers.  

---

## References
- [Kaggle: Customer Segmentation](https://www.kaggle.com/code/karnikakapoor/customer-segmentation-clustering/input)  
- [HubSpot: Buyer Persona Research](https://blog.hubspot.com/marketing/buyer-persona-research)  
- OpenAI ChatGPT (support in structuring analysis & report)  


