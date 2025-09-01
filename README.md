# 👩‍💼 Employee Turnover Prediction System

Welcome to the Employee Turnover ML project! This repository contains SAS code and data for predicting employee turnover using machine learning models.

## 📁 Project Structure

- `SAS/Employee.csv` – Employee dataset (features: Education, JoiningYear, City, PaymentTier, Age, Gender, EverBenched, ExperienceInCurrentDomain, LeaveOrNot)
- `SAS/Program 1.sas` – Main ML pipeline: data cleaning, encoding, train/test split, logistic regression, decision tree, metrics, and reporting
- `SAS/Program 2.sas` – Exploratory analysis: summary stats, visualizations, and additional features
- `SAS/employees.sas7bdat` – SAS binary dataset (optional)

## 🚀 How to Run

1. Open SAS Studio or your preferred SAS environment.
2. Update file paths in `.sas` scripts if needed.
3. Run `Program 1.sas` for the full ML workflow.
4. Run `Program 2.sas` for data exploration and visualization.

## 🧠 Features

- Data cleaning & missing value imputation
- Categorical encoding (label, binary, frequency)
- Train/test split
- Logistic Regression & Decision Tree models
- Confusion matrix, accuracy, precision, recall, F1-score
- Final report & recommendations
- Data visualization (bar charts, summary tables)

## 📊 Outputs

- Model predictions (`.csv`)
- Performance metrics
- Final summary report

## 💡 Recommendations

- Decision Tree performs best for this dataset
- Monitor and retrain models regularly
- Validate before production deployment

