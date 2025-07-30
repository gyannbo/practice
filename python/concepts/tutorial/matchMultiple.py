list = ['un', 'deux', 'trois', 'quatre', 'cinq']

for x in list:
	match x:
		case 'trois' | 'cinq':
			print("success")
		case _:
			print("fail")

##########

point = (8, 67)

match point:
	case (9, x):
		print(x)
	case (x, 67):
		print(x)

del point 

##########

class SomePoint:
	def __init__(self, x, y):
		self.x = x
		self.y = y

point = SomePoint(3, 3)
point2 = SomePoint(27, 27)

def where_is(point, point2):
	match point:
		case SomePoint(y = 3, x = 3) as p:   ### içi nom de la classe, pas le nom de la variable
			print(f"Success : x={p.x} y={p.y}")
		case _:
			print(f"fail")
	match point2:
		case SomePoint(x = 3, y = 3) as p:   ### içi nom de la classe, pas le nom de la variable
			print(f"Success : x={p.x} y={p.y}")
		case _:
			print("fail")

## Ne fonctionne pas car case (1, 2) attend un tuple, SomePoint(x = 3 etc.. est requis içi
##	match point:
##		case (3, 3):
##			print("Success")
##		case _:
##			print("fail")
##	match point2:
##		case (3, 3):
##			print("Success")
##		case _:
##			print("fail")

where_is(point, point2)



match point:
	case SomePoint(x = x, y = y) if x == y:  # pourquoi içi ça fonctionne avec x = x et pas avec juste x (il fallait __match_args__)
		print(f"Success: x ({x}) = y ({y})")
	case SomePoint(x, y):
		print(f"Fail: x ({x}) = y ({y})")

class SomePointBetter:
	__match_args__=('x', 'y')
	def __init__(self, x, y):
		self.x = x
		self.y = y

betterpoint = SomePointBetter(12, 14)

match betterpoint:
	case SomePointBetter(x, y) if x == y:
		print(f"SuccesBetter: x ({x}) = y ({y})")
	case SomePointBetter(x, y):
		print(f"FailBetter: x ({x}) = y ({y})")
