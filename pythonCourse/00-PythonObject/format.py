print("I'm going to inject %s here." %'something')
print("I'm going to inject %s text here, and %s text here." %('some','more'))
x, y = 'some', 'more'
print("I'm going to inject %s text here, and %s text here."%(x,y))
# Format conversion methods.
# It should be noted that two methods %s and %r convert any python object to a string using two separate methods: str() and repr(). We will learn more about these functions later on in the course, but you should note that %r and repr() deliver the string representation of the object, including quotation marks and any escape characters.
print('He said his name was %s.' %'Fred')
print('He said his name was %r.' %'Fred')
print('I once caught a fish %s.' %'this \tbig')
print('I once caught a fish %r.' %'this \tbig')
print('I wrote %s programs today.' %3.75)
print('I wrote %d programs today.' %3.75)   
# Padding and Precision of Floating Point Numbers
# Floating point numbers use the format %5.2f. Here, 5 would be the minimum number of characters the string should contain; these may be padded with whitespace if the entire number does not have this many digits. Next to this, .2f stands for how many numbers to show past the decimal point. Let's see some examples:
print('Floating point numbers: %5.2f' %(13.144))
print('Floating point numbers: %1.0f' %(13.144))
print('Floating point numbers: %1.5f' %(13.144))
print('Floating point numbers: %10.2f' %(13.144))
print('Floating point numbers: %25.2f' %(13.144))
# Multiple Formatting
# Nothing prohibits using more than one conversion tool in the same print statement:
print('First: %s, Second: %5.2f, Third: %r' %('hi!',3.1415,'bye!'))
# Formatting with the .format() method
# A better way to format objects into your strings for print statements is with the string .format() method. The syntax is:
# 'String here {} then also {}'.format('something1','something2')
# For example:
print('This is a string with an {}'.format('insert'))
print('The {2} {1} {0}'.format('fox','brown','quick'))
print('First Object: {a}, Second Object: {b}, Third Object: {c}'.format(a=1,b='Two',c=12.3))
print('A %s saved is a %s earned.' %('penny','penny'))
# vs.
print('A {p} saved is a {p} earned.'.format(p='penny'))

# Alignment, padding and precision with .format()
# Within the curly braces you can assign field lengths, left/right alignments, rounding parameters and more
print('{0:8} | {1:9}'.format('Fruit', 'Quantity'))
print('{0:8} | {1:9}'.format('Apples', 3.))
print('{0:8} | {1:9}'.format('Oranges', 10))
print('{0:<8} | {1:^8} | {2:>8}'.format('Left','Center','Right'))
print('{0:<8} | {1:^8} | {2:>8}'.format(11,22,33))
print('{0:=<8} | {1:-^8} | {2:.>8}'.format('Left','Center','Right'))
print('{0:=<8} | {1:-^8} | {2:.>8}'.format(11,22,33))
print('This is my ten-character, two-decimal number:%10.2f' %13.579)
print('This is my ten-character, two-decimal number:{0:10.2f}'.format(13.579))
# Formatted String Literals (f-strings)
name = 'Fred'
print(f"He said his name is {name}.")
print(f"He said his name is {name!r}")
num = 23.45678
print("My 10 character, four decimal number is:{0:10.4f}".format(num))
print(f"My 10 character, four decimal number is:{num:{10}.{6}}")
num = 23.45
print("My 10 character, four decimal number is:{0:10.4f}".format(num))
print(f"My 10 character, four decimal number is:{num:{10}.{6}}")
