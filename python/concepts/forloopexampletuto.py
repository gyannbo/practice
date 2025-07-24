for n in range(2, 10):
	for x in range(2, n):
		if n % x == 0:
			print(f"{n} equals {x} * {n//x}")
			break

## exemple dans les tutoriels sur le site de python. Je ne comprenais pas pourquoi les boucles
## semblait passer le n = 2, mais la raison c'est parce que lorsque le range(2, 2), rien n'est exécuté, 
## alors la ligne ne print pas alors que n % x == 0 serait vrai
