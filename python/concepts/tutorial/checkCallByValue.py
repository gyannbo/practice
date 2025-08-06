a = 10

def notmutable(z):
	z += 1
	print(f"{z} inside func")

notmutable(a)
print(a)  ## indeed call by value

v = [10]


def mutable(z):
	z[0] = z[0] +1
	print(f"{z} inside func")

mutable(v)
print(v)  ## it is more complicated, python arguments are passed by reference, whatever that mean, here there is an immutable data type first
		  ## and then a mutable data type (a list i believe) -> "Actually, call by object reference would be a better description, since if a mutable object is passed,
		  ## the caller will see any changes the callee makes to it (items inserted into a list)." is said in the tutorial.

print(mutable(v))  ## functions without a return do return a value : 'None', a built-in name

v.append(42)
print(v)
v = v + [54]  ## also possible but less efficient
print(v)
