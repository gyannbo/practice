string = input("please enter an integer :")
if string == '':
	print("nothing typed")
	exit()
x = int(string)

if x > 100:
	print("bigger than 100")
elif x >= 0:
	print("between 0 and 100 included")
elif x < 0:
	print("negative number")
elif x > 100:
	print("more than 100")

