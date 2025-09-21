# 📊 Statistical Learning & Data Mining  

This repository presents a collection of **machine learning and statistical modeling projects** that apply supervised learning, unsupervised learning, ensemble methods, and time series forecasting techniques to real-world datasets.  

The projects were implemented in **R**, with all analyses documented through **RMarkdown** for reproducibility. Each folder includes both the `.Rmd` source and rendered `.html` outputs.  

---

## 🔍 Project Highlights  

### 🚗 Auto & College Analysis  
- **Objective**: Predict automobile fuel efficiency (MPG) and classify colleges.  
- **Approach**:  
  - Multiple Linear Regression for MPG prediction.  
  - Logistic Regression and Decision Trees for college classification.  
- **Outcome**: Identified horsepower and weight as strong predictors of MPG; classification models effectively distinguished institutional characteristics.  

---

### 🌍 Emissions Analysis  
- **Objective**: Model emissions levels and identify key environmental predictors.  
- **Approach**:  
  - Data preprocessing and transformation.  
  - Regression modeling with diagnostic evaluation.  
- **Outcome**: Regression models successfully explained variance in emissions data and highlighted impactful industrial/energy-related features.  

---

### 📱 Device Classification  
- **Objective**: Classify device outcomes based on demographic and usage patterns.  
- **Approach**:  
  - Logistic Regression, Decision Trees, and Random Forests.  
  - Train/test split and cross-validation for evaluation.  
- **Outcome**: Random Forest achieved the highest accuracy; decision trees provided interpretability with slightly lower performance.  

---

### 🔗 Clustering Analysis  
- **Objective**: Discover hidden structure in multivariate data.  
- **Approach**:  
  - K-Means clustering with multiple initializations.  
  - Hierarchical clustering with complete, average, and single linkage.  
- **Outcome**: Clear cluster groupings identified; scaling shown to impact results significantly.  

---

### 🌧️ Rainfall Time Series  
- **Objective**: Explore temporal dependencies in rainfall data.  
- **Approach**:  
  - Time series plots, lag plots, and autocorrelation analysis.  
- **Outcome**: Detected serial dependence and underlying temporal structure useful for forecasting.  

---

### 🎵 Harmonic Regression  
- **Objective**: Capture seasonality and trends in real datasets.  
- **Approach**:  
  - Regression with harmonic (sin/cos) terms.  
  - Seasonal decomposition with diagnostics.  
- **Outcome**: Seasonal cycles successfully modeled; residual analysis validated model fit.  

---

### 📈 ARIMA & Seasonal Models  
- **Objective**: Build AR, MA, ARMA, and ARIMA models for economic and industrial series.  
- **Approach**:  
  - Simulation of stochastic processes.  
  - Box-Cox transformations for variance stabilization.  
  - Seasonal regression for periodic data.  
- **Outcome**: Effective seasonal ARIMA models developed; clear identification of trends and cycles.  

---

### 🔮 Forecasting with ARIMA  
- **Objective**: Forecast temperature and atmospheric CO₂ levels.  
- **Approach**:  
  - Seasonal ARIMA applied to long-term datasets.  
  - Forecast accuracy comparison among AR, MA, ARMA models.  
- **Outcome**: Accurate long-range forecasts produced; visualized with confidence intervals.  

---

## 🛠️ Tools & Libraries  
- **Language**: R  
- **Core Libraries**:  
  - `tidyverse` → data wrangling and visualization  
  - `caret` → classification & regression training  
  - `randomForest` → ensemble learning  
  - `tree` → decision tree modeling  
  - `TSA` → time series analysis  
  - `factoextra` → clustering visualization  
  - `ggplot2` → advanced plotting  

---

## ⚙️ How to Run  
1. Clone the repository:  
   ```bash
   git clone https://github.com/rishishanthan/statistical-learning-data-mining.git
   cd statistical-learning-data-mining

---

📈 Skills Demonstrated
- Regression & classification with real datasets.
- Clustering and dimensionality reduction.
- Advanced time series forecasting.
- Model diagnostics and validation.
- Data visualization and storytelling.
- Reproducible workflows with RMarkdown.

---

🎯 Takeaway
- This repository highlights the ability to handle end-to-end data science workflows:
- From raw data → preprocessing → modeling → validation → forecasting → reporting.
- Covers both predictive modeling (regression, classification) and exploratory learning (clustering, time series).
- Provides a clear demonstration of applied machine learning and statistical analysis skills suitable for practical, real-world problems.

---
