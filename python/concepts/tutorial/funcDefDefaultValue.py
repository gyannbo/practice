
a = 5

def f(arg=a):			## pourquoi içi je ne peux pas mettre f(a). Reponse, je peux mais cela ne fonctionnera pas avec f(), car la bonne maniere de faire un argument par défaut c'est avec arg=a
	print(arg)

a = 12

f()

def ex(a, L=[]):
	L.append(a)
	return L

print(ex(1))
print(ex(2))
print(ex(3))


## si on veut que la valeur par défaut soit réinit entre les calls:

def ex2(a, L=None):
	if L is None:
		L = []
	L.append(a)
	return L

print(ex2(5, [3, 4]))
print(ex2(32342342, [1, 2]))
