print(f"# Assign a list to an variable named my_list")
my_list = [1,2,3]
my_list = ['A string',23,100.232,'o']
print(len(my_list))
my_list = ['one','two','three',4,5]
print(f"# Grab element at index 0")
print(my_list[0])
print(f"# Grab index 1 and everything past it")
print(my_list[1:])
print(f"# Grab everything UP TO index 3")
print(my_list[:3])
print(f"# my_list + ['new item']")
# my_list
# Reassign
my_list = my_list + ['add new item permanently']
print(f"# Make the list double")
print(my_list*2)
print(f"# Again doubling not permanent")
print(my_list)
# Basic List Methods
# If you are familiar with another programming language, you might start to draw parallels between arrays in another language and lists in Python. Lists in Python however, tend to be more flexible than arrays in other languages for a two good reasons: they have no fixed size (meaning we don't have to specify how big a list will be), and they have no fixed type constraint (like we've seen above).
# Let's go ahead and explore some more special methods for lists:
# Create a new list
print(f"# my_nums: list[int] = [1, 2, 3]")
list1: list[int | str] = [1, 2, 3]
# Append
list1.append('append me!')
# Show
print(list1)
print(f"# Pop off the 0 indexed item")
list1.pop(0)
# Show
print(list1)
print(f"# Assign the popped element, remember default popped index is -1")
popped_item = list1.pop()# 輸出: (被彈出來的東西)
print(popped_item)
print(list1)# 輸出:  (剩下的東西)
# Show remaining list
# list1[100]
new_list = ['a','e','x','b','c']
#Show
print(new_list)
print(f"# Use reverse to reverse order (this is permanent!)")
new_list.reverse()
print(new_list)
print(f"# Use sort to sort the list (in this case alphabetical order, but for numbers it will go ascending)")
new_list.sort()
print(new_list)
# Nesting Lists
# A great feature of of Python data structures is that they support nesting. This means we can have data structures within data structures. For example: A list inside a list.
# Let's see how this works!
# Let's make three lists
lst_1=[1,2,3]
lst_2=[4,5,6]
lst_3=[7,8,9]

# Make a list of lists to form a matrix
matrix = [lst_1,lst_2,lst_3]
# Show
print(matrix)
# We can again use indexing to grab elements, but now there are two levels for the index. The items in the matrix object, and then the items inside that list!

# Grab first item in matrix object
matrix[0]
# Grab first item of the first item in the matrix object
matrix[0][0]
# List Comprehensions
# Python has an advanced feature called list comprehensions. They allow for quick construction of lists. To fully understand list comprehensions we need to understand for loops. So don't worry if you don't completely understand this section, and feel free to just skip it since we will return to this topic later.
# But in case you want to know now, here are a few examples!
# Build a list comprehension by deconstructing a for loop within a []
first_col = [row[0] for row in matrix]
print(first_col)