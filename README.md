# learn_5 -- just learning

```
$ cd <FOLDER_NAME>

# compile all in folder
$ make all

# OR compile only C program
$ make c1

# OR compile only C2 program
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

# run C2 program
$ make run2

# run D program
$ make run3

# run poop benchmark C and C2 programs
$ make poop12

# # run poop benchmark C and D programs
$ make poop13

# delete C compiled
$ make clean1

# delete C2 compiled
$ make clean2

# delete D compiled
$ make clean3

# delete all compiled
$ make clean
```


```
$ gcc --version
gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0


# https://github.com/c2lang/c2compiler
c2c --version
version: 8f27b650


$ ldc2 -v
binary    /home/e/.dlang/bin/ldc2
version   1.39.0 (DMD v2.109.1, LLVM 18.1.6)
config    /home/e/.dlang/etc/ldc2.conf (x86_64-unknown-linux-gnu)


$ zig version
0.13.0


# Nim and OCaml - deleted


## poop 0.4.0
## https://github.com/andrewrk/poop

## CPU 12th Gen Intel(R) Core(TM) i7-12700H  (ASUS TUF Gaming F15 FX507ZE)
```

