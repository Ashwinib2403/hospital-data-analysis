# 1. Import Libraries
import pandas as pd

import matplotlib.pyplot as plt

from pathlib import Path


# 2. Load Dataset
df = pd.read_csv(Path(__file__).resolve().parent / "healthcare_dataset.csv")


# 3. Data Overview
print(df.head())

print(df.shape)

print(df.columns)

df.info()



# 4. Data Preparation
df["Date of Admission"] = pd.to_datetime(df["Date of Admission"])

df["Discharge Date"] = pd.to_datetime(df["Discharge Date"])

df["Length of Stay"] = (df["Discharge Date"] - df["Date of Admission"]).dt.days

print(df[["Date of Admission", "Discharge Date", "Length of Stay"]].head())



# 5. Summary Statistics
print("Average length of stay:",df["Length of Stay"].mean())

print("Longest length of stay:",df["Length of Stay"].max())

print("Shortest length of stay:",df["Length of Stay"].min())

print("Average Billing Amount:",df["Billing Amount"].mean())

print("Highest Billing Amount:",df["Billing Amount"].max())

print("Lowest Billing Amount:",df["Billing Amount"].min())


# 6. Medical Condition Analysis
print(df.groupby("Medical Condition") ["Billing Amount"].mean())

print(df.groupby("Medical Condition").count()["Name"])

print(df.groupby("Medical Condition")["Age"].mean())

print(df.groupby("Medical Condition")["Length of Stay"].mean())


# 7. Admission and Gender Analysis
print(df.groupby("Admission Type").count()["Name"])

print(df.groupby("Gender").count()["Name"])

print(df.groupby("Admission Type")["Length of Stay"].mean())

print(df.groupby("Gender")["Billing Amount"].mean())


# 8. Test Results and Insurance Analysis
print(df.groupby("Test Results").count()["Name"])

print(df.groupby("Insurance Provider")["Billing Amount"].mean())


# 9. Medication and Blood Type Analysis
print(df.groupby("Medication").count()["Name"])

print(df.groupby("Blood Type").count()["Name"])

print(df.groupby("Medication")["Billing Amount"].mean())


# 10. Hospital Analysis
print(df.groupby("Hospital").count()["Name"])

print(df.groupby("Hospital").count()["Name"].sort_values(ascending=False).head(5))


# 11. Data Quality Checks
print(df.duplicated().sum())

print(df.isnull().sum())



# 12. Data Visualizations — Patient Count
condition_counts = df.groupby("Medical Condition").size()
plt.bar(condition_counts.index, condition_counts)
plt.xticks(rotation=45)
plt.title("Number of Patients by Medical Condition")
plt.xlabel("Medical Condition")
plt.ylabel("Number of Patients")   
plt.tight_layout()
plt.savefig("patients_by_condition.png") 
plt.show()


# 13. Data Visualizations — Billing Amount
billing_by_condition = df.groupby("Medical Condition")["Billing Amount"].mean()
print(billing_by_condition)
plt.bar(billing_by_condition.index, billing_by_condition)
plt.xticks(rotation=45)
plt.title("Average Billing Amount by Medical Condition")
plt.xlabel("Medical Condition")
plt.ylabel("Average Billing Amount")
plt.tight_layout()
plt.savefig("billing_by_condition.png")
plt.show()


# 14. Data Visualizations — Length of Stay
los_by_condition = df.groupby("Medical Condition")["Length of Stay"].mean()
print(los_by_condition)
plt.bar(los_by_condition.index, los_by_condition)
plt.xticks(rotation=45)
plt.title("Average Length of Stay by Medical Condition")
plt.xlabel("Medical Condition")
plt.ylabel("Average Length of Stay (days)")
plt.tight_layout()
plt.savefig("los_by_condition.png")
plt.show()
