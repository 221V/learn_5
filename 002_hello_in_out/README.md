# hello world + stdin


```
# see diff

$ make run1
./program_c
Please type number from 1 to 5 and press enter:
3.5
3 * 2 = 6

$ make run2
./program_nim
Please type number from 1 to 5 and press enter:
3.5
strutils.nim(1137)       parseInt
Error: unhandled exception: invalid integer: 3.5 [ValueError]

# D like C


$ make run5
./program_zig
Please type number from 1 to 5 and press enter:
3
3 * 2 = 6


$ make run5
./program_zig
Please type number from 1 to 5 and press enter:
3.5
Invalid number value!


$ make poop13
poop ./program_c ./program_d
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           246us ± 76.6us     203us … 1.83ms       1646 (16%)        0%
  peak_rss           1.56MB ± 61.9KB    1.41MB … 1.64MB          0 ( 0%)        0%
  cpu_cycles          224K  ± 5.41K      123K  …  299K         991 (10%)        0%
  instructions        145K  ±  947      50.4K  …  145K          37 ( 0%)        0%
  cache_references   2.66K  ±  708       684   … 6.92K        1450 (14%)        0%
  cache_misses       18.5   ± 47.0         0   … 4.20K         698 ( 7%)        0%
  branch_misses      2.08K  ±  178       640   … 2.38K        1178 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           150us ± 40.1us     129us … 1.36ms       1619 (16%)        ⚡- 38.8% ±  0.7%
  peak_rss            901KB ±    0       901KB …  901KB          0 ( 0%)        ⚡- 42.2% ±  0.1%
  cpu_cycles          103K  ± 5.25K     97.8K  …  176K         838 ( 8%)        ⚡- 54.0% ±  0.1%
  instructions       55.3K  ±  146      40.7K  … 55.3K        2489 (25%)        ⚡- 61.9% ±  0.0%
  cache_references    157   ±  290        21   … 2.62K         720 ( 7%)        ⚡- 94.1% ±  0.6%
  cache_misses       6.04   ± 43.2         0   … 1.95K        1041 (10%)        ⚡- 67.3% ±  6.8%
  branch_misses      36.1   ±  121         4   …  911          606 ( 6%)        ⚡- 98.3% ±  0.2%


$ make poop23
poop ./program_nim ./program_d

error: Benchmark 1 command './program_nim' failed with exit code 1:
─────────────────── stderr ───────────────────
syncio.nim(158)          raiseEOF
Error: unhandled exception: EOF reached [EOFError]

──────────────────────────────────────────────
make: *** [../comp.mk:75: poop23] Error 1
```

