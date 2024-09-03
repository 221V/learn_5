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
Benchmark 1 (486 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.2ms ±  769us    9.83ms … 20.8ms         50 (10%)        0%
  peak_rss           1.89MB ± 56.2KB    1.77MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  564K     36.3M  … 42.3M          51 (10%)        0%
  instructions        224M  ± 3.50       224M  …  224M           7 ( 1%)        0%
  cache_references   5.83K  ± 1.54K     2.96K  … 8.50K           0 ( 0%)        0%
  cache_misses        137   ±  299         8   … 2.64K          39 ( 8%)        0%
  branch_misses      2.73K  ±  137      1.56K  … 3.00K          27 ( 6%)        0%
Benchmark 2 (434 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.5ms ±  652us    11.1ms … 18.5ms         38 ( 9%)        💩+ 12.5% ±  0.9%
  peak_rss           1.87MB ± 2.03KB    1.86MB … 1.87MB          0 ( 0%)        ⚡-  1.3% ±  0.3%
  cpu_cycles         41.6M  ±  718K     41.0M  … 56.0M          35 ( 8%)        💩+ 13.7% ±  0.2%
  instructions        193M  ± 1.47K      193M  …  193M           0 ( 0%)        ⚡- 14.1% ±  0.0%
  cache_references   5.59K  ± 2.70K     1.65K  … 10.4K           0 ( 0%)          -  4.1% ±  4.8%
  cache_misses        148   ±  438         2   … 6.07K          57 (13%)          +  8.3% ± 35.1%
  branch_misses      2.05K  ± 1.14K      261   … 3.11K           0 ( 0%)        ⚡- 24.6% ±  3.8%


# Nim and D (with GMP)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           170ms ± 3.91ms     165ms …  181ms          5 (17%)        0%
  peak_rss           1.67MB ± 56.0KB    1.59MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          632M  ± 3.83M      625M  …  640M           0 ( 0%)        0%
  instructions       2.24G  ± 58.4      2.24G  … 2.24G           7 (23%)        0%
  cache_references   7.10K  ±  529      6.17K  … 8.03K           0 ( 0%)        0%
  cache_misses       2.95K  ± 1.93K      362   … 5.64K           0 ( 0%)        0%
  branch_misses      2.79K  ±  143      2.65K  … 3.34K           1 ( 3%)        0%
Benchmark 2 (428 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.7ms ±  917us    11.1ms … 18.5ms         43 (10%)        ⚡- 93.1% ±  0.3%
  peak_rss           1.87MB ± 2.02KB    1.86MB … 1.87MB          0 ( 0%)        💩+ 11.9% ±  0.3%
  cpu_cycles         41.5M  ±  163K     41.1M  … 43.7M          47 (11%)        ⚡- 93.4% ±  0.1%
  instructions        193M  ± 1.46K      193M  …  193M           0 ( 0%)        ⚡- 91.4% ±  0.0%
  cache_references   6.98K  ± 2.17K     1.83K  … 10.4K         151 (35%)          -  1.7% ± 10.9%
  cache_misses        491   ±  859         4   … 6.08K          74 (17%)        ⚡- 83.3% ± 12.1%
  branch_misses      2.70K  ±  612       482   … 3.07K          78 (18%)          -  3.1% ±  7.9%
```

