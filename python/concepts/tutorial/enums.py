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

# stop prompting AI and read the docs instead. Enum classes dont behave like normla classes. The color variable is an object
# from the Enum class, it is not only what is given with input(), it has also a name etc... why print(color) return Color.RED
# is just the behaviour of the class, to get this need to have a deeper understanding of classes and python.
