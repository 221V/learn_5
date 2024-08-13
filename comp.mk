

# clean all compiled
clean:
	rm program_c
	rm program_nim


# clean C compiled
clean1:
	rm program_c


# clean Nim compiled
clean2:
	rm program_nim


# compile all
all: c1 c2


# compile C program
c1:
	gcc -std=gnu99 -Wall -O3 -o program_c program.c
## https://web.stanford.edu/class/archive/cs/cs107/cs107.1202/resources/gcc


# compile Nim program
c2:
	nim c --verbosity:0 -d:release -o:program_nim program.nim
#	nim c -d:release -o:program_nim program.nim
## https://nim-lang.org/docs/nimc.html


# run C program
run1:
	./program_c


# run Nim program
run2:
	./program_nim


# run poop benchmark C and Nim programs
poop12:
	poop ./program_c ./program_nim


default: all
.PHONY: clean clean1 clean2 all c1 c2 run1 run2 poop12

