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
Benchmark 1 (476 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.4ms ± 1.13ms    9.85ms … 21.8ms         54 (11%)        0%
  peak_rss           1.90MB ± 56.9KB    1.78MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.6M  ±  758K     36.3M  … 42.3M          57 (12%)        0%
  instructions        224M  ± 3.60       224M  …  224M           8 ( 2%)        0%
  cache_references   6.07K  ± 1.55K     3.05K  … 8.76K           0 ( 0%)        0%
  cache_misses        332   ±  581        10   … 4.48K          72 (15%)        0%
  branch_misses      2.73K  ±  111      1.87K  … 2.98K          17 ( 4%)        0%
Benchmark 2 (9 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           570ms ± 5.32ms     566ms …  582ms          0 ( 0%)        💩+5367.4% ±  8.3%
  peak_rss           3.06MB ± 3.41KB    3.06MB … 3.06MB          0 ( 0%)        💩+ 61.2% ±  2.0%
  cpu_cycles         2.15G  ± 18.1M     2.14G  … 2.20G           1 (11%)        💩+5782.9% ±  4.4%
  instructions       7.17G  ±  360K     7.17G  … 7.17G           0 ( 0%)        💩+3098.5% ±  0.0%
  cache_references   3.55M  ± 87.2K     3.45M  … 3.76M           2 (22%)        💩+58380.2% ± 123.0%
  cache_misses       18.6K  ± 3.33K     12.4K  … 24.5K           0 ( 0%)        💩+5490.3% ± 142.6%
  branch_misses       170K  ±  489       169K  …  170K           0 ( 0%)        💩+6115.2% ±  3.1%


# Nim and D (with std.bigint)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           168ms ± 1.79ms     166ms …  175ms          1 ( 3%)        0%
  peak_rss           1.65MB ± 56.9KB    1.58MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          634M  ± 4.98M      627M  …  648M           0 ( 0%)        0%
  instructions       2.24G  ± 45.4      2.24G  … 2.24G           6 (20%)        0%
  cache_references   6.74K  ±  464      6.26K  … 8.24K           2 ( 7%)        0%
  cache_misses       1.43K  ± 1.26K      267   … 4.86K           2 ( 7%)        0%
  branch_misses      2.71K  ± 49.3      2.62K  … 2.81K           0 ( 0%)        0%
Benchmark 2 (9 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           569ms ± 2.13ms     566ms …  573ms          0 ( 0%)        💩+238.7% ±  0.9%
  peak_rss           3.06MB ± 2.05KB    3.06MB … 3.06MB          0 ( 0%)        💩+ 84.9% ±  2.4%
  cpu_cycles         2.15G  ± 7.97M     2.14G  … 2.16G           0 ( 0%)        💩+239.3% ±  0.7%
  instructions       7.17G  ±  289K     7.17G  … 7.17G           0 ( 0%)        💩+220.4% ±  0.0%
  cache_references   3.56M  ±  142K     3.36M  … 3.73M           0 ( 0%)        💩+52696.6% ± 762.4%
  cache_misses       18.0K  ± 2.94K     13.8K  … 22.2K           0 ( 0%)        💩+1155.9% ± 95.5%
  branch_misses       169K  ±  629       168K  …  170K           1 (11%)        💩+6153.7% ±  8.5%


# C and D (with GMP)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (484 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.3ms ±  534us    9.87ms … 15.4ms         49 (10%)        0%
  peak_rss           1.90MB ± 57.6KB    1.78MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.6M  ±  788K     36.3M  … 44.9M          45 ( 9%)        0%
  instructions        224M  ± 4.12       224M  …  224M          16 ( 3%)        0%
  cache_references   6.03K  ± 1.21K     2.98K  … 8.54K           0 ( 0%)        0%
  cache_misses        171   ±  331         7   … 3.25K          55 (11%)        0%
  branch_misses      2.74K  ± 98.2      2.03K  … 3.02K          14 ( 3%)        0%
Benchmark 2 (50 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           101ms ± 5.99ms    97.1ms …  122ms          0 ( 0%)        💩+888.4% ±  5.4%
  peak_rss           1.79MB ± 2.90KB    1.79MB … 1.81MB          1 ( 2%)        ⚡-  5.5% ±  0.8%
  cpu_cycles          368M  ± 8.15M      320M  …  391M           6 (12%)        💩+906.4% ±  2.1%
  instructions       1.89G  ± 34.3M     1.65G  … 1.90G           1 ( 2%)        💩+743.7% ±  1.4%
  cache_references   8.73K  ± 1.64K     4.34K  … 10.9K           0 ( 0%)        💩+ 44.7% ±  6.1%
  cache_misses       2.54K  ± 2.03K       88   … 7.71K           0 ( 0%)        💩+1381.2% ± 117.6%
  branch_misses      3.14K  ±  176      1.98K  … 3.42K           2 ( 4%)        💩+ 14.8% ±  1.1%


# Nim and D (with GMP)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           168ms ± 2.07ms     166ms …  177ms          1 ( 3%)        0%
  peak_rss           1.66MB ± 64.9KB    1.58MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          634M  ± 4.18M      625M  …  643M           0 ( 0%)        0%
  instructions       2.24G  ± 64.9      2.24G  … 2.24G           0 ( 0%)        0%
  cache_references   6.33K  ±  613      4.66K  … 7.56K           6 (20%)        0%
  cache_misses       1.58K  ± 1.24K      446   … 5.32K           1 ( 3%)        0%
  branch_misses      2.68K  ± 55.4      2.58K  … 2.87K           1 ( 3%)        0%
Benchmark 2 (51 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          99.2ms ± 3.13ms    97.1ms …  111ms          9 (18%)        ⚡- 41.0% ±  0.8%
  peak_rss           1.79MB ± 2.02KB    1.79MB … 1.79MB          0 ( 0%)        💩+  7.7% ±  1.1%
  cpu_cycles          370M  ± 5.32M      367M  …  393M           5 (10%)        ⚡- 41.7% ±  0.4%
  instructions       1.90G  ± 1.50K     1.90G  … 1.90G           0 ( 0%)        ⚡- 15.3% ±  0.0%
  cache_references   7.48K  ± 2.25K     3.25K  … 10.8K           0 ( 0%)        💩+ 18.2% ± 13.3%
  cache_misses       1.62K  ± 1.59K      134   … 7.10K           1 ( 2%)          +  2.3% ± 42.7%
  branch_misses      2.90K  ±  510      1.33K  … 3.25K           9 (18%)        💩+  8.0% ±  7.0%
```

