def fib(n):
	a, b = 0, 1  # after a def, everything must be indented
	while a < n:
		print(a, end=' ') # end=' ' to have space between occurences, default is \n
		a, b = b, a+b
	print()

fib(34)
