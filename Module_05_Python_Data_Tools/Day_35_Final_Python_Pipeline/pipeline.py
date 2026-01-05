import pandas as pd
import numpy as np

# Load raw data
df = pd.read_csv("data/raw_sales_data.csv")

print("Raw data loaded:")
print(df)

# Handle missing values
df["quantity"] = df["quantity"].fillna(0)
df["price"] = df["price"].fillna(df["price"].median())
df["region"] = df["region"].fillna("Unknown")

# Convert data types
df["quantity"] = df["quantity"].astype(int)
df["price"] = df["price"].astype(int)

# Create calculated column
df["total_value"] = df["quantity"] * df["price"]

# Basic validation
df = df[df["total_value"] >= 0]

print("\nCleaned data:")
print(df)

# Save cleaned data
df.to_csv("data/cleaned_sales_data.csv", index=False)

print("\nPipeline completed. Cleaned data saved.")
