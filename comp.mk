

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


# compile D program (ldc2, with --betterC, single file without deps)
c3:
	ldc2 -mtriple=x86_64-linux-gnu -w -O --betterC -static -of=program_d program.d
## https://wiki.dlang.org/LDC


# compile D program (ldc2, no --betterC, single file without deps)
c30:
	ldc2 -mtriple=x86_64-linux-gnu -w -O -static -of=program_d program.d
## https://wiki.dlang.org/LDC


# compile D program (with deps, with source folder, with dub.json)
c31:
	dub build --force


# compile D program (ldc2, with deps, without source folder, with dub.json)
c32:
	dub build --compiler ldc2 --build release --force


# compile OCaml program
c4:
	ocamlopt -o program_oc program.ml
#	ocamlopt -o program module1.ml module2.ml



# run C program
run1:
	./program_c


# run Nim program
run2:
	./program_nim


# run D program
run3:
	./program_d


# run OCaml program
run4:
	./program_oc



# run poop benchmark C and Nim programs
poop12:
	poop ./program_c ./program_nim


# run poop benchmark C and D programs
poop13:
	poop ./program_c ./program_d


# run poop benchmark Nim and D programs
poop23:
	poop ./program_nim ./program_d


# run poop benchmark OCaml and C programs
poop41:
	poop ./program_c ./program_oc


# run poop benchmark OCaml and D programs
poop43:
	poop ./program_oc ./program_d


default: all
.PHONY: clean clean1 clean2 clean3 all c1 c2 c3 c30 c31 c32 c4 run1 run2 run3 run4 poop12 poop13 poop23 poop41 poop43

