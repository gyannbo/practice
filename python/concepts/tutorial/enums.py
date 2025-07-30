from enum import Enum
class Color(Enum):  ## inheritance from Enum Class to custom Color class
	RED = 'rouge'
	GREEN = 'vert'	
	YELLOW = 'jaune'

color = Color(input("choose rouge, vert or jaune :"))   ## use Color class to get the right value assigned to color

match color:
	case Color.RED:
		print('rouge it is')
	case Color.GREEN:
		print('vert it is')
	case Color.YELLOW:
		print('jaune it is')

print(type(color))
print(color)
print(color.name)
print(color.value)
## check what from enum import Enum does
