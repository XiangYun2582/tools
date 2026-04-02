# First Example
if True:
    print('It was true!')

x = False

if x:
    print('x was True!')
else:
    print('I will be printed in any case where x is not true')

# Multiple Branches
# Let's get a fuller picture of how far if, elif, and else can take us!
# We write this out in a nested structure. Take note of how the if, elif, and else line up in the code. This can help you see what if is related to what elif or else statements.
# We'll reintroduce a comparison syntax for Python.

loc = 'Bank'

if loc == 'Auto Shop':
    print('Welcome to the Auto Shop!')
elif loc == 'Bank':
    print('Welcome to the bank!')
else:
    print('Where are you?')


person = 'Sammy'

# Note how the nested if statements are each checked until a True boolean causes the nested code below it to run. You should also note that you can put in as many elif statements as you want before you close off with an else.
# Let's create two more simple examples for the if, elif, and else statements:
if person == 'Sammy':
    print('Welcome Sammy!')
else:
    print("Welcome, what's your name?")

person = 'George'

if person == 'Sammy':
    print('Welcome Sammy!')
elif person =='George':
    print('Welcome George!')
else:
    print("Welcome, what's your name?")