# Dynamic Typing
# Python uses dynamic typing, meaning you can reassign variables to different data types. This makes Python very flexible in assigning data types; it differs from other languages that are statically typed.
my_dogs = 2
print(my_dogs)
my_dogs = ['Sammy', 'Frankie']
print(my_dogs)
a = 5
print(a)

# Assigning Variables
# Variable assignment follows name = object, where a single equals sign = is an assignment operator
a = 10
print(a)
a = a + 10
print(a)
a += 10
print(a)
a *= 2
print(a)
print(type(a))
a = (1,2)
print(type(a))
# Simple Exercise
my_income = 100
tax_rate = 0.1
my_taxes = my_income * tax_rate
print(my_taxes)