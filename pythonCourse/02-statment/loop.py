# We'll learn how to automate this sort of list in the next lecture
list1 = [1,2,3,4,5,6,7,8,9,10]
for num in list1:
    print(num)
print(f"# Modulo")
print(17 % 5)
for num in list1:
    if num % 2 == 0:
        print(num)

for num in list1:
    if num % 2 == 0:
        print(num)
    else:
        print(f'Odd number: {num}')
results = [num if num % 2 == 0 else 'Odd number' for num in list1]# 推導寫法速度更快
print(results)
# for num in list1:
#     print(num if num % 2 == 0 else 'Odd number')
# def check_even(num):
#     return num if num % 2 == 0 else 'Odd number'
# # 之後就可以直接這樣用，甚至搭配 map 函數
# print(list(map(check_even, list1)))

print(f"# Start sum at zero")
list_sum = 0 
for num in list1:
    list_sum = list_sum + num
print(list_sum)
# Start sum at zero
list_sum = 0 
for num in list1:
    list_sum += num
print(list_sum)

print(f"# We've used for loops with lists, how about with strings? Remember strings are a sequence so when we iterate through them we will be accessing each item in that string.")
for letter in 'This is a string.':
    print(letter)

print(f"# Let's now look at how a for loop can be used with a tuple:")
list2 = [(2,4),(6,8),(10,12)]
for tup in list2:
    print(tup)
# Now with unpacking!
for (t1,t2) in list2:
    print(t1)

print(f"# Let's now look at how a for loop can be used with a set:")
d = {'k1':1,'k2':2,'k3':3}
for item in d:
    print(item)
print(d.items())

# Dictionary unpacking
for k,v in d.items():
    print(k)
    print(v) 
print(list(d.keys()))
print(sorted(d.values()))
# We've learned how to use for loops to iterate through tuples, lists, strings, and dictionaries. It will be an important tool for us, so make sure you know it well and understood the above examples.