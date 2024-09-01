

# clean all compiled
clean:
	rm program_c
	rm program_nim
	rm program_d


# clean C compiled
clean1:
	rm program_c


# clean Nim compiled
clean2:
	rm program_nim


# clean D compiled
clean3:
	rm program_d


# compile all
all: c1 c2 c3


# compile C program
c1:
	gcc -std=gnu99 -Wall -O3 -o program_c program.c
## https://web.stanford.edu/class/archive/cs/cs107/cs107.1202/resources/gcc


# compile Nim program
c2:
	nim c --verbosity:0 -d:release -o:program_nim program.nim
#	nim c -d:release -o:program_nim program.nim
## https://nim-lang.org/docs/nimc.html


# compile D program
c3:
	ldc2 -mtriple=x86_64-linux-gnu -O -static -of=program_d program.d
#	ldc2 -mtriple=x86_64-linux-gnu -O --betterC -of=program_d program.d
## https://wiki.dlang.org/LDC


# run C program
run1:
	./program_c


# run Nim program
run2:
	./program_nim


# run D program
run3:
	./program_d


# run poop benchmark C and Nim programs
poop12:
	poop ./program_c ./program_nim


# run poop benchmark C and D programs
poop13:
	poop ./program_c ./program_d


# run poop benchmark Nim and D programs
poop23:
	poop ./program_nim ./program_d


default: all
.PHONY: clean clean1 clean2 clean3 all c1 c2 c3 run1 run2 run3 poop12 poop13 poop23

