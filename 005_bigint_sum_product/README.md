# bigint - sum && product


```
$ gcc -std=gnu99 -Wall -O3 -o program_c program.c -lgmp

$ make run1
./program_c
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


# same
$ make c2
$ make run2
./program_nim
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


# same - D (with std.bigint)
$ ldc2 -mtriple=x86_64-linux-gnu -w -O -static -of=program_d program.d
$ make run3
./program_d
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


# same - D (with GMP)
$ make c32
$ make run3
./program_d
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000


# same - Zig
$ make c5
$ make run5
./program_zig
SUM(1, 4_000_000) = 8000002000000
PRODUCT(1, 100) = 933262154439441526816992388562667004907159682643816214685929638952175999932299156089414639761565182862536979208272237582511852109168640000000000000000000000


$ make poop12
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


# C and D (with std.bigint)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (477 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.4ms ±  838us    9.88ms … 16.0ms         58 (12%)        0%
  peak_rss           1.89MB ± 56.6KB    1.77MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  570K     36.3M  … 42.3M          47 (10%)        0%
  instructions        224M  ± 3.32       224M  …  224M           5 ( 1%)        0%
  cache_references   6.72K  ± 1.13K     3.33K  … 9.62K          19 ( 4%)        0%
  cache_misses        127   ±  356         7   … 3.70K          48 (10%)        0%
  branch_misses      2.72K  ± 71.6      1.87K  … 3.00K          37 ( 8%)        0%
Benchmark 2 (27 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           186ms ± 6.78ms     179ms …  207ms          1 ( 4%)        💩+1681.2% ±  6.5%
  peak_rss           3.00MB ± 2.34KB    2.99MB … 3.00MB          0 ( 0%)        💩+ 58.2% ±  1.1%
  cpu_cycles          685M  ± 15.3M      676M  …  755M           1 ( 4%)        💩+1774.1% ±  3.7%
  instructions       2.48G  ± 74.3K     2.48G  … 2.48G           0 ( 0%)        💩+1005.0% ±  0.0%
  cache_references    964K  ± 90.0K      856K  … 1.29M           1 ( 4%)        💩+14236.4% ± 118.3%
  cache_misses       22.8K  ± 19.1K     5.10K  … 77.9K           0 ( 0%)        💩+17826.3% ± 1332.5%
  branch_misses      47.7K  ±  545      46.9K  … 49.6K           1 ( 4%)        💩+1656.6% ±  2.0%


# Nim and D (with std.bigint)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           167ms ± 1.38ms     166ms …  174ms          2 ( 7%)        0%
  peak_rss           1.66MB ± 63.2KB    1.58MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          632M  ± 2.91M      627M  …  640M           1 ( 3%)        0%
  instructions       2.24G  ± 62.6      2.24G  … 2.24G           0 ( 0%)        0%
  cache_references   6.85K  ±  624      6.13K  … 8.11K           0 ( 0%)        0%
  cache_misses       3.00K  ± 1.62K      377   … 5.58K           0 ( 0%)        0%
  branch_misses      2.73K  ± 93.1      2.62K  … 3.02K           1 ( 3%)        0%
Benchmark 2 (28 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           183ms ± 2.44ms     180ms …  190ms          3 (11%)        💩+  9.3% ±  0.6%
  peak_rss           3.00MB ± 2.19KB    2.99MB … 3.00MB          0 ( 0%)        💩+ 80.8% ±  1.4%
  cpu_cycles          683M  ± 7.38M      672M  …  708M           1 ( 4%)        💩+  8.1% ±  0.5%
  instructions       2.48G  ± 4.67M     2.46G  … 2.48G           2 ( 7%)        💩+ 10.6% ±  0.1%
  cache_references    962K  ± 53.0K      863K  … 1.09M           0 ( 0%)        💩+13948.8% ± 283.5%
  cache_misses       15.5K  ± 7.14K     8.66K  … 39.6K           1 ( 4%)        💩+417.3% ± 89.6%
  branch_misses      47.8K  ±  345      47.3K  … 48.5K           0 ( 0%)        💩+1654.7% ±  4.8%


# C and D (with GMP)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (485 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.3ms ±  952us    9.86ms … 20.7ms         46 ( 9%)        0%
  peak_rss           1.89MB ± 56.1KB    1.79MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  556K     36.3M  … 42.3M          57 (12%)        0%
  instructions        224M  ± 4.35       224M  …  224M          18 ( 4%)        0%
  cache_references   5.40K  ± 1.27K     3.12K  … 8.42K           0 ( 0%)        0%
  cache_misses        359   ±  413        58   … 3.96K          50 (10%)        0%
  branch_misses      2.75K  ±  138      1.80K  … 3.19K          15 ( 3%)        0%
Benchmark 2 (436 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.5ms ±  325us    11.1ms … 16.2ms         26 ( 6%)        💩+ 11.7% ±  0.9%
  peak_rss           1.87MB ± 2.05KB    1.86MB … 1.87MB          0 ( 0%)        ⚡-  1.4% ±  0.3%
  cpu_cycles         41.5M  ±  193K     41.2M  … 43.7M          29 ( 7%)        💩+ 13.6% ±  0.2%
  instructions        193M  ± 1.48K      193M  …  193M           0 ( 0%)        ⚡- 14.1% ±  0.0%
  cache_references   5.19K  ± 2.54K     1.94K  … 10.5K           0 ( 0%)          -  3.8% ±  4.7%
  cache_misses        381   ±  606        15   … 6.21K          48 (11%)          +  6.0% ± 18.5%
  branch_misses      1.93K  ± 1.10K      264   … 3.06K           0 ( 0%)        ⚡- 30.0% ±  3.6%


# Nim and D (with GMP)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           168ms ± 2.05ms     166ms …  177ms          1 ( 3%)        0%
  peak_rss           1.67MB ± 66.9KB    1.58MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          633M  ± 4.20M      626M  …  641M           0 ( 0%)        0%
  instructions       2.24G  ± 58.6      2.24G  … 2.24G           7 (23%)        0%
  cache_references   6.11K  ±  717      4.10K  … 7.52K           7 (23%)        0%
  cache_misses       2.96K  ± 1.09K      835   … 5.17K           0 ( 0%)        0%
  branch_misses      2.69K  ± 77.4      2.61K  … 2.92K           0 ( 0%)        0%
Benchmark 2 (433 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.5ms ±  685us    11.1ms … 17.3ms         41 ( 9%)        ⚡- 93.1% ±  0.2%
  peak_rss           1.87MB ± 2.04KB    1.86MB … 1.87MB          0 ( 0%)        💩+ 11.7% ±  0.4%
  cpu_cycles         41.5M  ±  148K     40.8M  … 42.6M          35 ( 8%)        ⚡- 93.4% ±  0.1%
  instructions        193M  ± 1.48K      193M  …  193M           0 ( 0%)        ⚡- 91.4% ±  0.0%
  cache_references   5.14K  ± 2.83K     1.56K  … 10.5K           0 ( 0%)          - 15.8% ± 16.6%
  cache_misses        358   ±  620        11   … 6.27K          46 (11%)        ⚡- 87.9% ±  8.3%
  branch_misses      1.93K  ± 1.11K      264   … 3.05K           0 ( 0%)        ⚡- 28.4% ± 14.8%


# C and Zig
$ make poop15
poop ./program_c ./program_zig
Benchmark 1 (433 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.5ms ±  690us    11.0ms … 19.3ms         39 ( 9%)        0%
  peak_rss           1.91MB ± 58.1KB    1.77MB … 1.99MB          0 ( 0%)        0%
  cpu_cycles         41.2M  ±  640K     34.5M  … 45.3M          28 ( 6%)        0%
  instructions        200M  ± 1.61M      167M  …  200M          14 ( 3%)        0%
  cache_references   6.27K  ± 1.37K     3.65K  … 8.72K           0 ( 0%)        0%
  cache_misses        488   ±  564        58   … 4.44K          46 (11%)        0%
  branch_misses      2.86K  ±  117      2.02K  … 3.18K          16 ( 4%)        0%
Benchmark 2 (10000 runs): ./program_zig
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           337us ± 43.7us     305us … 1.91ms       1057 (11%)        ⚡- 97.1% ±  0.1%
  peak_rss            905KB ±    0       905KB …  905KB          0 ( 0%)        ⚡- 52.5% ±  0.1%
  cpu_cycles          899K  ± 15.7K      321K  … 1.08M         758 ( 8%)        ⚡- 97.8% ±  0.0%
  instructions       5.12M  ± 37.1K     1.41M  … 5.12M        3015 (30%)        ⚡- 97.4% ±  0.0%
  cache_references   15.2   ± 57.2         0   …  419         1151 (12%)        ⚡- 99.8% ±  0.4%
  cache_misses       1.67   ± 5.06         0   …  239         1566 (16%)        ⚡- 99.7% ±  2.3%
  branch_misses       112   ± 16.1        32   …  210          835 ( 8%)        ⚡- 96.1% ±  0.1%
```

