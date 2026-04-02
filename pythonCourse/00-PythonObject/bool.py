x = set()
# We add to sets with the add() method
x.add(1)
#Show
print(x)
# Note the curly brackets. This does not indicate a dictionary! Although you can draw analogies as a set being a dictionary with only keys.
# We know that a set has only unique entries. So what happens when we try to add something that is already in a set?

# Add a different element
x.add(2)
#Show
print(x)
# Try to add the same element
x.add(1)
#Show
print(x)
# Notice how it won't place another 1 there. That's because a set is only concerned with unique elements! We can cast a list with multiple repeat elements to a set to get the unique elements. For example:

# Create a list with repeats
list1 = [1,1,2,2,3,4,5,6,1,1]
# Cast as set to get unique values
print(set(list1))
# Booleans
# Python comes with Booleans (with predefined True and False displays that are basically just the integers 1 and 0). It also has a placeholder object called None. Let's walk through a few quick examples of Booleans (we will dive deeper into them later in this course).

# Set object to be a boolean
a = True
#Show
print(a)
# We can also use comparison operators to create booleans. We will go over all the comparison operators later on in the course.

# Output is boolean
print(1 > 2)
# We can use None as a placeholder for an object that we don't want to reassign yet:

# None placeholder
b = None
# Show
print(b)