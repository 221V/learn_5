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


# same (D with std.bigint)
$ ldc2 -mtriple=x86_64-linux-gnu -w -O -static -of=program_d program.d
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


# C and D (std.bigint)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (478 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          10.4ms ±  992us    9.89ms … 23.2ms         60 (13%)        0%
  peak_rss           1.91MB ± 60.2KB    1.82MB … 2.02MB          0 ( 0%)        0%
  cpu_cycles         36.5M  ±  637K     31.4M  … 42.3M          55 (12%)        0%
  instructions        224M  ± 1.72M      187M  …  224M          10 ( 2%)        0%
  cache_references   6.37K  ± 1.46K     3.13K  … 8.69K          57 (12%)        0%
  cache_misses        125   ±  345         6   … 4.10K          48 (10%)        0%
  branch_misses      2.72K  ± 73.1      2.06K  … 3.02K          28 ( 6%)        0%
Benchmark 2 (9 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           571ms ± 4.64ms     567ms …  583ms          1 (11%)        💩+5409.4% ±  7.3%
  peak_rss           3.06MB ± 2.73KB    3.05MB … 3.06MB          0 ( 0%)        💩+ 59.7% ±  2.1%
  cpu_cycles         2.15G  ± 16.8M     2.11G  … 2.16G           1 (11%)        💩+5776.9% ±  4.1%
  instructions       7.15G  ± 60.5M     6.99G  … 7.17G           1 (11%)        💩+3090.6% ±  2.3%
  cache_references   3.63M  ± 60.7K     3.55M  … 3.72M           0 ( 0%)        💩+56855.2% ± 82.1%
  cache_misses       19.1K  ± 5.03K     11.9K  … 26.2K           0 ( 0%)        💩+15237.7% ± 386.7%
  branch_misses       169K  ± 1.24K      166K  …  170K           1 (11%)        💩+6110.4% ±  4.2%


# Nim and D (std.bigint)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (30 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           167ms ± 1.75ms     166ms …  176ms          1 ( 3%)        0%
  peak_rss           1.65MB ± 66.9KB    1.52MB … 1.75MB          0 ( 0%)        0%
  cpu_cycles          632M  ± 2.97M      628M  …  639M           0 ( 0%)        0%
  instructions       2.24G  ± 63.4      2.24G  … 2.24G           0 ( 0%)        0%
  cache_references   6.32K  ±  572      4.64K  … 7.94K           4 (13%)        0%
  cache_misses       1.34K  ± 1.10K      281   … 3.85K           0 ( 0%)        0%
  branch_misses      2.70K  ±  107      2.30K  … 2.98K           3 (10%)        0%
Benchmark 2 (9 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           573ms ± 9.15ms     566ms …  596ms          1 (11%)        💩+242.4% ±  2.1%
  peak_rss           3.06MB ± 3.41KB    3.05MB … 3.06MB          0 ( 0%)        💩+ 85.0% ±  2.8%
  cpu_cycles         2.16G  ± 35.8M     2.14G  … 2.26G           1 (11%)        💩+242.5% ±  2.1%
  instructions       7.17G  ±  316K     7.17G  … 7.17G           0 ( 0%)        💩+220.4% ±  0.0%
  cache_references   3.47M  ±  114K     3.30M  … 3.61M           0 ( 0%)        💩+54759.0% ± 648.7%
  cache_misses       16.6K  ± 3.66K     11.4K  … 22.5K           0 ( 0%)        💩+1141.4% ± 113.5%
  branch_misses       169K  ±  518       169K  …  170K           0 ( 0%)        💩+6186.0% ±  7.5%

```

