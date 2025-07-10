list=[ 1, 2, 3, 4]
print(list)
print(list[0])
list = list + [5, 6, 7]
print(list)

list[0] = 345   ## lists are mutable, unlike strings
print(list)
list.append(2048)
print(list)

secondlist = list           ## simple assignement in python never copies data, hence the following lines
secondlist.append(55555)
print(list)

thirdlist = secondlist[:]   ## slices operation returns a shallow copy, which is a copy with reference type when possible
thirdlist[-1] = 0
print(thirdlist)
print(secondlist)

thirdlist[2:4] = []     ## slices operations can truncate or delete a list
print(thirdlist)
thirdlist[:] = []
print(thirdlist)
