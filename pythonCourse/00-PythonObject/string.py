print(f"# Single word")
print('hello')
print(f"# Entire phrase")
print('This is also a string')
print(f"# We can also use double quote")
print("String built with double quotes")

# Be careful with quotes!
# The reason for the error above is because the single quote in I'm stopped the string. You can use combinations of double and single quotes to get the complete statement.

print("Now I\'m ready to use the single quotes inside a string!")
# We can simply declare a string
# Note that we can't output multiple strings this way
print(f"# We can use a print statement to print a string.")
print('Hello World 1')
print('Hello World 2')
print('Use \n to print a new line')
print('\n')
print('See what I mean?')
print(len('Hello World'))

# Python's built-in len() function counts all of the characters in the string, including spaces and punctuation.
# String Indexing
# We know strings are a sequence, which means Python can use indexes to call parts of the sequence. Let's learn how this works.
# In Python, we use brackets [] after an object to call its index. We should also note that indexing starts at 0 for Python. Let's create a new object called s and then walk through a few examples of indexing.

print(f"# Assign s as a string")
s = 'Hello World'
#Check
# Print the object
print(s) 
# Let's start indexing!

print(f"# Show first element (in this case a letter)")
print(s[0]) 
print(s[1]) 
print(s[2]) 
# We can use a : to perform slicing which grabs everything up to a designated point. For example:
# Grab everything past the first term all the way to the length of s which is len(s)
print(s[1:]) 
# Note that there is no change to the original s
print(s) 
# Grab everything UP TO the 3rd index
print(s[:3]) 
# Note the above slicing. Here we're telling Python to grab everything from 0 up to 3. It doesn't include the 3rd index. You'll notice this a lot in Python, where statements and are usually in the context of "up to, but not including".

#Everything[start:end:step]
print(s[:]) 
# We can also use negative indexing to go backwards.

print(f"# Last letter (one index behind 0 so it loops back around)")
print(s[-1]) 
print(f"# Grab everything but the last letter")
print(s[:-1]) 
# We can also use index and slice notation to grab elements of a sequence by a specified step size (the default is 1). For instance we can use two colons in a row and then a number specifying the frequency to grab elements. For example:

print(f"# Grab everything, but go in steps size of 1")
print(s[::1]) 
print(f"# Grab everything, but go in step sizes of 2")
print(s[::2]) 
print(f"# We can use this to print a string backward")
print(s[::-1]) 
# String Properties
# It's important to note that strings have an important property known as immutability. This means that once a string is created, the elements within it can not be changed or replaced. For example:
print(s) 
# Let's try to change the first letter to 'x'
# s[0] = 'x' error
#! 這意味著一旦字串建立好了，你就不能像改清單（List）那樣直接去修改其中某個字元。就像你用原子筆在紙上寫了字，沒辦法直接擦掉其中一個字母改寫一樣。
# Concatenate strings!
print(s + ' concatenate me!')
# We can reassign s completely though!
s = s + ' concatenate me!'
print(s)
letter = 'z'
print(letter*10)
# Basic Built-in String methods
# Objects in Python usually have built-in methods. These methods are functions inside the object (we will learn about these in much more depth later) that can perform actions or commands on the object itself.
# We call methods with a period and then the method name. Methods are in the form:
# object.method(parameters)
# Upper Case a string
print(s.upper())
# Lower case
# Split a string by blank space (this is the default)
print(s.split())
# Split by a specific element (doesn't include the element that was split on)
print(s.split('W'))
# There are many more methods than the ones covered here. Visit the Advanced String section to find out more!
# Print Formatting
# We can use the .format() method to add formatted objects to printed string statements.
# The easiest way to show this is through an example:
print('Insert another string with curly brackets: {}'.format('The inserted string'))
print('Hello World'[-3:-4:-1])
print('tinker'[1:-2:1])