import pandas as pd

# Load CSV data
df = pd.read_csv("data/sample_sales.csv")

print("First 5 rows:")
print(df.head())

print("\nData Info:")
print(df.info())

print("\nSummary Statistics:")
print(df.describe())

# Create a calculated column
df["total_value"] = df["quantity"] * df["price"]

# Save processed data
df.to_csv("data/sales_with_total.csv", index=False)

print("\nNew column 'total_value' added and file saved.")
