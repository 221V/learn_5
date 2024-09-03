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
Benchmark 1 (488 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.2ms ±  599us    9.88ms … 20.3ms         43 ( 9%)        0%
  peak_rss           1.91MB ± 60.1KB    1.77MB … 2.00MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  637K     36.3M  … 42.4M          51 (10%)        0%
  instructions        224M  ± 3.18       224M  …  224M           5 ( 1%)        0%
  cache_references   6.26K  ± 1.15K     3.08K  … 8.50K          13 ( 3%)        0%
  cache_misses        202   ±  417         9   … 3.88K          47 (10%)        0%
  branch_misses      2.72K  ±  113      1.62K  … 3.01K          31 ( 6%)        0%
Benchmark 2 (86 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          58.4ms ± 2.20ms    54.5ms … 65.4ms          2 ( 2%)        💩+472.2% ±  2.3%
  peak_rss           1.87MB ± 1.95KB    1.86MB … 1.87MB          0 ( 0%)        ⚡-  2.1% ±  0.7%
  cpu_cycles          213M  ± 13.3M      194M  …  246M           0 ( 0%)        💩+482.9% ±  3.2%
  instructions       1.10G  ± 1.41K     1.10G  … 1.10G           0 ( 0%)        💩+389.1% ±  0.0%
  cache_references   5.83K  ± 2.33K     2.38K  … 10.8K           0 ( 0%)        ⚡-  6.9% ±  5.1%
  cache_misses       1.33K  ± 1.26K       94   … 6.45K           3 ( 3%)        💩+556.9% ± 70.2%
  branch_misses      3.10K  ± 2.74K      566   … 18.1K           9 (10%)        💩+ 14.1% ±  8.9%


# Nim and D (with GMP)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           168ms ± 2.39ms     160ms …  177ms          2 ( 7%)        0%
  peak_rss           1.64MB ± 64.0KB    1.58MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          632M  ± 5.55M      607M  …  639M           1 ( 3%)        0%
  instructions       2.24G  ± 66.7      2.24G  … 2.24G           0 ( 0%)        0%
  cache_references   5.96K  ± 1.00K     4.03K  … 7.83K           0 ( 0%)        0%
  cache_misses       1.76K  ± 1.28K      241   … 4.74K           0 ( 0%)        0%
  branch_misses      2.71K  ± 80.9      2.61K  … 2.93K           0 ( 0%)        0%
Benchmark 2 (84 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          60.1ms ± 2.06ms    53.6ms … 64.2ms          1 ( 1%)        ⚡- 64.1% ±  0.5%
  peak_rss           1.87MB ± 2.04KB    1.86MB … 1.87MB          0 ( 0%)        💩+ 13.4% ±  0.8%
  cpu_cycles          226M  ± 7.82M      202M  …  242M           1 ( 1%)        ⚡- 64.2% ±  0.5%
  instructions       1.10G  ± 1.52K     1.10G  … 1.10G           0 ( 0%)        ⚡- 51.0% ±  0.0%
  cache_references   2.93K  ± 1.45K     1.95K  … 7.21K          10 (12%)        ⚡- 50.8% ±  9.6%
  cache_misses        596   ±  798        61   … 6.35K           3 ( 4%)        ⚡- 66.1% ± 22.7%
  branch_misses       986   ± 1.51K      269   … 9.25K          16 (19%)        ⚡- 63.7% ± 20.2%
```

