import pandas as pd
numbers=list(map(int,input("Enter 5 numbers:").split()))
series=pd.Series(numbers)
squares=series*series
entries={"Numbers":numbers,"Squares":squares}
df=pd.DataFrame(entries)
print(df)