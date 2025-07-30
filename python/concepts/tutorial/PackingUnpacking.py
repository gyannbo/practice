# Packing a tuple
fruits = ("apple", "banana", "cherry")

# Unpacking a tuple
(green, yellow, red) = fruits  ## need to be the right number of arguments

print(green)
print(yellow)
print(red)
print()
(green, *yellow) = fruits  ## * pour unpack sur un plus petit nombre d'éléments

print(green)
print(yellow)
print(yellow[0])
print()

(green, yellow, *_) = fruits  ## utiliser le _ pour matcher un plus petit nombre sans le reste

print(green)
print(yellow)


