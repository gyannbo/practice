import sys

if len(sys.argv) != 4:
	print("usage : python file.py arg1 arg2 arg3")
	exit()
print(sys.argv[0])
print(sys.argv[1])
print(sys.argv[2])
print(sys.argv[3])
