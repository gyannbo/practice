s = input("pick a number: ")
if s == '':
	print("nothing typed")
	exit()
x = int(s)
match x:
	case _ if x > 0:
		print("positive number")
	case _ if x < 0:
		print("negative number")

##match [ x >= 0, x < 0]:
##	case [true, false]:
##		print("positive number")
##	case [false, true]:
##		print("negative number")
