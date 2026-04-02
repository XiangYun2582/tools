# Let’s look at a few simple while loops in action.
x = 0
while x < 10:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1

x = 0
while x < 10:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1
else:
    print('All Done!')

print(f"# break, continue, pass")

x = 0

while x < 10:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1
    if x==3:
        print('x==3')
    else:
        print('continuing...')
        continue

# Note how we have a printed statement when x==3, and a continue being printed out as we continue through the outer while loop. Let's put in a break once x ==3 and see if the result makes sense:

x = 0

while x < 10:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1
    if x==3:
        print('Breaking because x==3')
        break # stop
    else:
        print('continuing...')
        continue

#! DO NOT RUN THIS CODE!!!!  A quick note: If you did run the above cell, click on the Kernel menu above to restart the kernel!
# while True:
#     print("I'm stuck in an infinite loop!")