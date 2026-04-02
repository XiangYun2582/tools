# range
print(range(0,11))

# Notice how 11 is not included, up to but not including 11, just like slice notation!
print(list(range(0,11)))
print(list(range(0,12)))
print(list(range(0,11,2)))
# enumerate
print(f"# enumerate is a very useful function to use with for loops. Let's imagine the following situation:index_count = 0")
index_count = 0
for letter in 'abcde':
    print("At index {} the letter is {}".format(index_count,letter))
    index_count += 1
for i,letter in enumerate('abcde'):
    print("At index {} the letter is {}".format(i,letter))

# zip
print(f"# Notice the format enumerate actually returns, let's take a look by transforming it to a list()")
print(list(enumerate('abcde')))
mylist1 = [1,2,3,4,5]
mylist2 = ['a','b','c','d','e']
# This one is also a generator! We will explain this later, but for now let's transform it to a list
print(list(zip(mylist1,mylist2)))

for item1, item2 in zip(mylist1,mylist2):
    print('For this tuple, first item was {} and second item was {}'.format(item1,item2))

# in operator
print(f"# We've already seen the in keyword during the for loop, but we can also use it to quickly check if an object is in a list.")
# not in is good to check in
print('x' in ['x','y','z'])
print('x' in [1,2,3])
print('x' not in ['x','y','z'])
print('x' not in [1,2,3])
# min and max
print(f"printQuickly check the minimum or maximum of a list with these functions.")
mylist = [10,20,30,40,100]
print(min(mylist))
print(max(mylist))
# random
print(f"Python comes with a built in random library. There are a lot of functions included in this random library, so we will only show you two useful functions for now.")
from random import shuffle
# This shuffles the list "in-place" meaning it won't return
# anything, instead it will effect the list passed
shuffle(mylist)# 打散資料的時候非常好用，公正洗牌
print(mylist)
from random import randint
# Return random integer in range [a, b], including both end points.
randint(0,100)
input('Enter Something into this box: ')