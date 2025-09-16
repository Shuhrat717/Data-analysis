import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Read the CSV file
df = pd.read_csv(
    r"c:\Users\shuhr\Downloads\DimCustomers.csv",
    sep=",",
    encoding="latin1",
    quotechar='"',
    on_bad_lines="skip"
)

# Show first few rows
print("👉 Initial data preview:")
print(df.head())

# Count of null values per column
print("\n👉 Number of null values in each column:")
print(df.isnull().sum())

# Count of duplicate rows
print("\n👉 Number of duplicates:", df.duplicated().sum())

# Data types before cleaning
print("\n👉 Data types before cleaning:")
print(df.dtypes)

# Drop unnecessary columns 
df_cleaned = df.drop(columns=["SpanishEducation", "FrenchEducation", "SpanishOccupation", "FrenchOccupation"], errors="ignore")

# Convert date column to datetime format
df_cleaned["DateFirstPurchase"] = pd.to_datetime(df_cleaned["DateFirstPurchase"], errors="coerce")

# Fill missing values for specific columns
df_cleaned = df_cleaned.fillna({
    "Title": "NoTitle",
    "MiddleName": "NoMiddle",
    "Suffix": "NoSuffix",
    "AddressLine2": "NoAddress"
})

# Show cleaned dataframe info
print("\n👉 Cleaned data info:")
print(df_cleaned.info())

# Plot heatmap for null values (only if DataFrame is not empty)
if not df_cleaned.empty:
    plt.figure(figsize=(12, 6))
    sns.heatmap(df_cleaned.isnull(), cbar=False, cmap="viridis")
    plt.title("Null Values Heatmap")
    plt.show()
else:
    print("\n⚠️ Note: DataFrame is empty — heatmap will not be displayed.")
