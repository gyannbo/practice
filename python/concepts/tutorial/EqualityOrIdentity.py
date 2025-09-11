a = 10
b = 10
c = 30

print('by equality')
print(a == b)  ## comparison by equality (value of the object)
print(a == c)
print()

a = True
b = True
c = False

print('by indentity')
print(a is True)   ## comparison by indentity, is it the same object 
print(a is False)
print()

list1 = [1, 2, 3]
list2 = [1, 2, 3]
list3 = list2


print(list1 == list2)
print(list1 is list2)
print(list3 is list2)
