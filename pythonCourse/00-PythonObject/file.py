my_file = open('00-PythonObject/test.txt')
print(my_file.read())
my_file.seek(my_file.seek(0))
my_file.close()

my_file = open('00-PythonObject/test1.txt','w+')
my_file.write('This is a new line')
# Read the file
my_file.seek(my_file.seek(0))
print(my_file.read())
my_file.close()

my_file = open('00-PythonObject/test2.txt','a+')
my_file.write('\nThis is text being appended to test.txt')
my_file.write('\nAnd another line here.')
my_file.seek(my_file.seek(0))