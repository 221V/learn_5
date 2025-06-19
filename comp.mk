

# clean all compiled
clean:
	rm program_c
	rm program_d
	rm -rf output


# clean C compiled
clean1:
	rm program_c


# clean C2 compiled
clean2:
	rm -rf output


# clean D compiled
clean3:
	rm program_d


# compile all
all: c1 c2 c3


# compile C program
c1:
	gcc -std=gnu99 -Wall -O3 -o program_c program.c
## https://web.stanford.edu/class/archive/cs/cs107/cs107.1202/resources/gcc


# compile C2 program
c2:
	c2c program.c2


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


# compile Zig program
c5:
	zig build-exe program.zig -O ReleaseFast -fstrip --name program_zig


# run C program
run1:
	./program_c


# run C2 program
run2:
	./output/program/program


# run D program
run3:
	./program_d


# run Zig program
run5:
	./program_zig



# run poop benchmark C and C2 programs
poop12:
	poop ./program_c ./output/program/program


# run poop benchmark C and D programs
poop13:
	poop ./program_c ./program_d


# run poop benchmark C and Zig programs
poop15:
	poop ./program_c ./program_zig


default: all
.PHONY: clean clean1 clean2 clean3 all c1 c2 c3 c30 c31 c32 c5 run1 run2 run3 run5 poop12 poop13 poop15

