collection = {'un': 'orange', 'deux': 'pomme', 'trois': 'raisin'}

for left,right in collection.items():    ## oubli des parentheses ici, après items
	print(left, right)


## Create a sample collection
#users = {'Hans': 'active', 'Éléonore': 'inactive', '景太郎': 'active'}
#
## Strategy:  Iterate over a copy
#for user, status in users.copy().items():
#    if status == 'inactive':
#        del users[user]
#
## Strategy:  Create a new collection
#active_users = {}
#for user, status in users.items():
#    if status == 'active':
#        active_users[user] = status
#        print(active_users)
