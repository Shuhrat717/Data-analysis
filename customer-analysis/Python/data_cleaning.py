import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(
    r"c:\Users\shuhr\Downloads\DimCustomers.csv",
    sep=",",
    encoding="latin1",
    quotechar='"',
    on_bad_lines="skip"   
)


print(df.head())
print(df.isnull().sum())
print(df.duplicated().sum())