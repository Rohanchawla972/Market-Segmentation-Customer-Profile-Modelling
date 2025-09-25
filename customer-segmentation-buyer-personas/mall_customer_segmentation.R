################################################################################
# Mall Customer Segmentation - Clustering Assignment (analysis-only)
# Author: Rohan Chawla | Year: 2025
################################################################################

options(device = "RStudioGD")
try({ while (dev.cur() > 1) dev.off() }, silent = TRUE)

# ---- Packages ----
library(tidyverse)  
library(cluster)
library(factoextra)
library(corrplot)

# ---- Import ----
data <- read.csv("marketing_campaign.csv")

# ---- Feature engineering to match report variables ----
current_year <- 2025  # or: as.integer(format(Sys.Date(), "%Y"))
data <- data %>%
  mutate(
    Age        = current_year - Year_Birth,
    FamilySize = 1 + Kidhome + Teenhome,
    TotalSpend = MntWines + MntFruits + MntMeatProducts +
      MntFishProducts + MntSweetProducts + MntGoldProds
  )

# ---- Keep variables used for clustering ----
data_clean <- data %>%
  filter(!is.na(Income)) %>%
  select(Age, Income, FamilySize, Recency, TotalSpend, NumWebPurchases)

# ---- Correlation analysis (Fig 1.1 equivalent) ----
corrplot(cor(data_clean, use = "complete.obs"), method = "color", type = "upper")

# ---- Standardize ----
vars_scaled <- scale(data_clean)

# ---- K-means: k = 2 (Fig 1.2) ----
set.seed(123)
km2 <- kmeans(vars_scaled, centers = 2, nstart = 25)
fviz_cluster(km2, data = vars_scaled,
             geom = "point", ellipse.type = "convex",
             main = "K-means Clustering (k = 2)")

# ---- Visualize by Income & TotalSpend (Fig 2.1) ----
fviz_cluster(km2, data = vars_scaled,
             choose.vars = c("Income", "TotalSpend"),
             main = "Clusters by Income & Total Spend")

# ---- Cluster means (for personas / Tables 3.1–3.2) ----
aggregate(data_clean, by = list(cluster = km2$cluster), mean)

# ---- Alternative cluster solutions: k = 3, 4, 5 (Figs 4.1–4.3) ----
set.seed(123)
km3 <- kmeans(vars_scaled, centers = 3, nstart = 25)
km4 <- kmeans(vars_scaled, centers = 4, nstart = 25)
km5 <- kmeans(vars_scaled, centers = 5, nstart = 25)

fviz_cluster(km3, data = vars_scaled, main = "k = 3")
fviz_cluster(km4, data = vars_scaled, main = "k = 4")
fviz_cluster(km5, data = vars_scaled, main = "k = 5")

# ---- Elbow method (Fig 5.1) ----
fviz_nbclust(vars_scaled, kmeans, method = "wss") +
  labs(title = "Elbow Method for Optimal k")

