import pandas as pd
a=list(map(int,input("Enter numbers:").split()))
b=list(map(int,input("Enter numbers:").split()))
input1=pd.Series(a)
input2=pd.Series(b)
print("Input1:\n",input1)
print("Input2:\n",input2)
add=input1+input2
sub=input1-input2
mul=input1*input2
div=input1/input2
mod=input1%input2
entries={"Input1":input1,"Input2":input2,"Add":add,"sub":sub,"Mul":mul,"Div":div,"Mod":mod}
my_result=pd.DataFrame(entries)
print(my_result)
