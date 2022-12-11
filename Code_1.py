x=open("code1_result.txt","a")
i1=int(input("Enter First number:"))
i2=int(input("Enter Second number:"))
i3=int(input("Enter Third number:"))
i4=int(input("Enter Fourth number:"))
i5=int(input("Enter fifth number:"))
print("The Numbers are:",i1,i2,i3,i4,i5)
print("The Numbers are:",i1,i2,i3,i4,i5,file=x)
if (i1<0) or (i2<0) or (i3<0) or (i4<0) or (i5<0):
    print("Enter positive numbers only")
    print("Enter positive numbers only",file=x)
else:
    result=i1+i2+i3+i4+i5
    print("Sum of numbers is:",result)
    print("Sum of numbers is:",result,file=x)
    x.close()