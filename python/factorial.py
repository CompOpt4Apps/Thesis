import sys
#to = int(sys.argv[1])

#line = sys.stdin.readline()
f = open("num.txt", "r")
line = f.readline()
to = int(line) 

fact = 1

for i in range(to,1,-1):
    fact *= i

print fact
