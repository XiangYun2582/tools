# Create a tuple
t = (1,2,3)
# Check len just like a list
print(len(t))
# Can also mix object types
t = ('one',2)
# Show
print(t)
# Use indexing just like we did in lists
print(t[0])
# Slicing just like a list
print(t[-1])
# Basic Tuple Methods
# Tuples have built-in methods, but not as many as lists do. Let's look at two of them:

# Use .index to enter a value and return the index
print(t.index('one'))
# Use .count to count the number of times a value appears
print(t.count('one'))