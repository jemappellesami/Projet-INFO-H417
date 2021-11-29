import pandas as pd 

import random as rd 

database = pd.DataFrame(columns=["from", "to"])
i = 0 
while i < 1000 :
    lower = rd.randint(0, 1000)
    upper = rd.randint(lower, 1001)
    df2 = {"from":lower, "to":upper}

    database = database.append(df2, ignore_index=True)

    i += 1

database.to_csv("random_ranges.csv", index=False)