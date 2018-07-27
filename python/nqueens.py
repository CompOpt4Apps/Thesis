# From: http://wiki.python.org/moin/SimplePrograms, with permission from the author, Steve Howell
f = open("nqueens.txt", "r")
line = f.readline()
boardSize = int(line) 
 
def under_attack(col, queens):
    return col in queens or \
           any(abs(col - x) == len(queens)-i for i,x in enumerate(queens))
 
def solve(n):
    solutions = [[]]
    for row in range(n):
        solutions = [solution+[i+1]
                       for solution in solutions
                       for i in range(boardSize)
                       if not under_attack(i+1, solution)]
    return solutions
 
for answer in solve(boardSize): print(list(enumerate(answer, start=1)))
