import pandas as pd 

import random as rd 

database = pd.DataFrame(columns=["from", "to"])
i = 0 
ultimate_max = 10000
ultimate_min = 0

while i < 1000 :
    max = rd.randint(2000, ultimate_max)
    min = rd.randint(ultimate_min, 2000)
    lower = rd.randint(min, max)
    upper = rd.randint(min, max)
    if upper > lower :
        df2 = {"from":lower, "to":upper}
        database = database.append(df2, ignore_index=True)
    elif upper < lower :
        df2 = {"from":upper, "to":lower}
        database = database.append(df2, ignore_index=True)
    i += 1

database.to_csv("random_ranges2.csv", index=False)