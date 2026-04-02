# python -m 00-PythonObject.number
# 學習一下module管理
print(f"# Addition")
print(2+1)
print(f"# Subtraction")
print(2-1)
print(f"# Multiplication")
print(2*2)
print(f"# Division")
print(3/2)
print(f"# Floor Division")
print(7//4)

# TODO: Whoa! What just happened? Last time I checked, 7 divided by 4 equals 1.75 not 1!
# The reason we get this result is because we are using "floor" division. The // operator (two forward slashes) truncates the decimal without rounding, and returns an integer result.
# So what if we just want the remainder after division?

print(f"# Modulo")
print(7%4)#? 取餘數好用
# 4 goes into 7 once, with a remainder of 3. The % operator returns the remainder after division.
# Arithmetic continued
print(f"# Powers")
print(2**3)
print(f"# Can also do roots this way")
print(4**0.5)
print(f"# Order of Operations followed in Python")
print(2 + 10 * 10 + 3)
print(f"# Can use parentheses to specify orders")
print((2+10) * (10+3))

# Variable Assignments
# Now that we've seen how to use numbers in Python as a calculator let's see how we can assign names and create variables.
# We use a single equals sign to assign labels to variables. Let's see a few examples of how we can do this.
print(f"# Let's create an object called 'a' and assign it the number 5")
a = 5
# Now if I call a in my Python script, Python will treat it as the number 5.

print(f"# Adding the objects")
print(a+a)
# What happens on reassignment? Will Python let us write it over?

print(f"# Reassignment")
a = 10
print(f"# Check")
print(a)
# Yes! Python allows you to write over assigned variable names. We can also use the variables themselves when doing the reassignment. Here is an example of what I mean:

print(f"# Check")
print(a)
print(f"# Use A to redefine A")
a += a
print(f"# Check")
print(a)

# TODO: The names you use when creating these labels need to follow a few rules:
# 1. Names can not start with a number.
# 2. There can be no spaces in the name, use _ instead.
# 3. Can't use any of these symbols :'",<>/?|\()!@#$%^&*~-+
# 4. It's considered best practice (PEP8) that names are lowercase.
# 5. Avoid using the characters 'l' (lowercase letter el), 'O' (uppercase letter oh),  or 'I' (uppercase letter eye) as single character variable names.
# 6. Avoid using words that have special meaning in Python like "list" and "str"
# Using variable names can be a very useful way to keep track of different variables in Python. For example:
print(f"# Use object names to keep better track of what's going on in your code!")
my_income = 100
tax_rate = 0.1
my_taxes = my_income*tax_rate
# Show my taxes!
print(my_taxes)

# So what have we learned? We learned some of the basics of numbers in Python. We also learned how to do arithmetic and use Python as a basic calculator. We then wrapped it up with learning about Variable Assignment in Python.
# Up next we'll learn about Strings!