list = ['un', 'deux', 'trois', 'quatre', 'cinq']

for x in list:
	match x:
		case 'trois' | 'cinq':
			print("success")
		case _:
			print("fail")
