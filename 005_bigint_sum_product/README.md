# bigint - sum && product


```
$ gcc -std=gnu99 -Wall -O3 -o program_c program.c -lgmp

$ make run1
./program_c
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000

# same
$ make run2
./program_nim
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


$  make poop12
poop ./program_c ./program_nim
Benchmark 1 (480 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.3ms ±  801us    9.83ms … 16.0ms         68 (14%)        0%
  peak_rss           1.89MB ± 54.3KB    1.79MB … 1.98MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  544K     36.3M  … 42.3M          55 (11%)        0%
  instructions        224M  ± 2.55       224M  …  224M           3 ( 1%)        0%
  cache_references   5.85K  ± 1.82K     2.14K  … 8.62K           0 ( 0%)        0%
  cache_misses        140   ±  331        10   … 5.06K          43 ( 9%)        0%
  branch_misses      2.72K  ±  136      1.32K  … 3.12K          18 ( 4%)        0%
Benchmark 2 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           168ms ± 1.05ms     166ms …  170ms          0 ( 0%)        💩+1520.0% ±  2.9%
  peak_rss           1.63MB ± 54.5KB    1.58MB … 1.72MB          0 ( 0%)        ⚡- 13.7% ±  1.1%
  cpu_cycles          631M  ± 3.28M      626M  …  637M           0 ( 0%)        💩+1627.8% ±  1.0%
  instructions       2.24G  ± 64.3      2.24G  … 2.24G           0 ( 0%)        💩+898.3% ±  0.0%
  cache_references   7.11K  ±  774      5.31K  … 8.42K           0 ( 0%)        💩+ 21.5% ± 11.2%
  cache_misses       1.14K  ± 1.03K      277   … 4.38K           4 (13%)        💩+714.6% ± 106.6%
  branch_misses      2.70K  ± 39.8      2.63K  … 2.79K           0 ( 0%)          -  0.9% ±  1.8%
```

