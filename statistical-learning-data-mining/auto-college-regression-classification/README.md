# 🚗📚 Regression and Classification on Auto & College Datasets  

This project applies **regression and classification techniques** to two real-world datasets: **Auto** (fuel efficiency) and **College** (institutional characteristics).  

---

## 📂 Contents
- `data/Auto.csv` – dataset on automobile specifications (predicting MPG).  
- `data/College.csv` – dataset on colleges and universities (classification task).  
- `Auto College Regression Classification.Rmd` – R Markdown file with analysis.  
- `Auto College Regression Classification.html` – rendered report with results and visualizations.  

---

## 🔍 Analysis Overview
### Auto Dataset
- Objective: Predict **miles per gallon (MPG)** using regression.  
- Methods:
  - Simple & multiple linear regression.  
  - Residual diagnostics, R², adjusted R².  
  - Feature importance assessment (horsepower, weight, cylinders).  

### College Dataset
- Objective: Classify colleges based on admission & institutional features.  
- Methods:
  - Logistic regression for binary classification.  
  - Decision tree models for interpretability.  
  - Evaluation with confusion matrices and accuracy.  

---

## 📊 Key Results
- **Auto Dataset**: Horsepower and weight were strong predictors of MPG.  
- **College Dataset**: Logistic regression provided solid performance, while decision trees offered interpretability with slightly less accuracy.  

---

## ⚙️ How to Run
1. Open the RMarkdown file in RStudio.  
2. Install dependencies if needed:  
   ```r
   install.packages(c("ggplot2", "dplyr", "caret", "tree"))
   
---

## 🛠️ Tools & Libraries

- Language: R
- Libraries: ggplot2, dplyr, caret, tree

---

## 📈 Skills Demonstrated

- Regression analysis (linear, multiple).
- Logistic regression and decision tree classification.
- Model evaluation with diagnostics and confusion matrices.
- Visualization and interpretation of model results.

---
