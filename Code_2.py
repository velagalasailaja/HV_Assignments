car={}
x=open("code2_result.txt","a")
brand_name=list(map(str,input("Enter different brand names of car:").split()))
color=list(map(str,input("Enter Colors of the car:").split()))
print("The brand names of the car are :",brand_name)
print("The brand names of the car are :",brand_name,file=x)
print("The colours of the car are:",color)
print("The colours of the car are:",color,file=x)
car=dict(zip(brand_name,color))
print("The dictionary is :",car)
print("The dictionary is :",car,file=x)