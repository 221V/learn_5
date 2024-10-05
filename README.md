# learn_5 -- just learning

```
$ cd <FOLDER_NAME>

# compile all in folder
$ make all

# OR compile only C program
$ make c1

# OR compile only Nim program
$ make c2

# OR compile only D program (ldc2, with --betterC, single file program.d without deps)
$ make c3

# OR compile only D program (ldc2, no betterC, single file program.d without deps)
$ make c30

# OR compile only D program (with deps, with source folder, with dub.json)
$ make c31

# OR compile only D program (ldc2, with deps, without source folder, with dub.json)
$ make c32


# run C program
$ make run1

# run Nim program
$ make run2

# run D program
$ make run3

# run poop benchmark C and Nim programs
$ make poop12

# # run poop benchmark C and D programs
$ make poop13

# run poop benchmark Nim and D programs
$ make poop23

# delete C compiled
$ make clean1

# delete Nim compiled
$ make clean2

# delete D compiled
$ make clean3

# delete all compiled
$ make clean
```


```
$ gcc --version
gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0


$ nim -v
Nim Compiler Version 2.0.8 [Linux: amd64]
Compiled at 2024-07-03
Copyright (c) 2006-2023 by Andreas Rumpf

git hash: 5935c3bfa9fec6505394867b23510eb5cbab3dbf
active boot switches: -d:release


# OCaml
~> utop
Welcome to utop version 2.14.0 (using OCaml version 5.2.0)!


$ ldc2 -v
binary    /home/e/.dlang/bin/ldc2
version   1.39.0 (DMD v2.109.1, LLVM 18.1.6)
config    /home/e/.dlang/etc/ldc2.conf (x86_64-unknown-linux-gnu)


## poop 0.4.0
## https://github.com/andrewrk/poop

## CPU 12th Gen Intel(R) Core(TM) i7-12700H  (ASUS TUF Gaming F15 FX507ZE)
```


