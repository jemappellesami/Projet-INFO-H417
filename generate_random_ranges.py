import pandas as pd 
import random as rd 

FILE1 = "random_ranges.csv"
FILE2 = "random_ranges2.csv"
files = [FILE1, FILE2]

for name in files:
    database = pd.DataFrame(columns=["from", "to"])
    i = 0 
    ultimate_max = 10000
    ultimate_min = 0
    mid = rd.randint(ultimate_min, ultimate_max)
    max = rd.randint(mid, ultimate_max)
    min = rd.randint(ultimate_min, mid)
    while i < 100 :
        lower = rd.randint(min, max)
        upper = rd.randint(min, max)
        if upper > lower :
            df2 = {"from":lower, "to":upper}
            database = database.append(df2, ignore_index=True)
        elif upper < lower :
            df2 = {"from":upper, "to":lower}
            database = database.append(df2, ignore_index=True)
        i += 1
    database.to_csv(name, index=False)
