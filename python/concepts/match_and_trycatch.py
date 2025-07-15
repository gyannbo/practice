s = input("pick a number: ")
if s == '':
	print("nothing typed")
	exit()

try:
    x = int(s)
except:
    print("something whent wrong with user input")
    exit()

match x:
	case _ if x > 0:
		print("positive number")
	case _ if x < 0:
		print("negative number")

##match [x >= 0, x < 0]:
##	case [True, False]:				## careful, must be True, not true
##		print("positive number")
##	case [False, True]:
##		print("negative number")
