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


# C and D (with GMP)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (428 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.6ms ±  865us    11.0ms … 20.8ms         42 (10%)        0%
  peak_rss           1.91MB ± 59.6KB    1.77MB … 1.99MB          0 ( 0%)        0%
  cpu_cycles         41.2M  ±  503K     40.3M  … 44.5M          37 ( 9%)        0%
  instructions        200M  ± 3.25       200M  …  200M           6 ( 1%)        0%
  cache_references   6.42K  ± 1.58K     3.30K  … 8.85K           0 ( 0%)        0%
  cache_misses        367   ±  472        57   … 5.06K          36 ( 8%)        0%
  branch_misses      2.85K  ±  108      2.17K  … 3.14K          24 ( 6%)        0%
Benchmark 2 (429 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.7ms ±  776us    11.2ms … 18.2ms         49 (11%)          +  0.6% ±  0.9%
  peak_rss           1.30MB ± 2.04KB    1.30MB … 1.30MB          0 ( 0%)        ⚡️- 31.7% ±  0.3%
  cpu_cycles         41.4M  ±  438K     40.8M  … 45.8M          72 (17%)          +  0.4% ±  0.2%
  instructions        192M  ± 0.88       192M  …  192M           8 ( 2%)        ⚡️-  4.1% ±  0.0%
  cache_references   2.99K  ±  750       233   … 3.93K          26 ( 6%)        ⚡️- 53.4% ±  2.6%
  cache_misses        234   ±  395         1   … 2.79K          50 (12%)        ⚡️- 36.2% ± 15.9%
  branch_misses      1.04K  ±  212       117   … 1.17K          43 (10%)        ⚡️- 63.4% ±  0.8%

$ make poop13
poop ./program_c ./program_d
Benchmark 1 (424 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.7ms ± 1.08ms    11.0ms … 19.5ms         55 (13%)        0%
  peak_rss           1.91MB ± 59.5KB    1.77MB … 1.99MB          0 ( 0%)        0%
  cpu_cycles         41.2M  ±  454K     40.3M  … 43.6M          21 ( 5%)        0%
  instructions        200M  ± 2.77       200M  …  200M           3 ( 1%)        0%
  cache_references   6.92K  ± 1.29K     3.47K  … 8.73K          11 ( 3%)        0%
  cache_misses        548   ±  979         7   … 5.60K          84 (20%)        0%
  branch_misses      2.84K  ± 72.1      2.11K  … 3.18K          31 ( 7%)        0%
Benchmark 2 (429 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          11.7ms ±  743us    11.0ms … 17.8ms         57 (13%)          -  0.8% ±  1.1%
  peak_rss           1.30MB ± 2.05KB    1.30MB … 1.30MB          0 ( 0%)        ⚡- 31.9% ±  0.3%
  cpu_cycles         41.4M  ±  311K     41.1M  … 44.2M          88 (21%)          +  0.6% ±  0.1%
  instructions        192M  ± 1.02       192M  …  192M           8 ( 2%)        ⚡-  4.1% ±  0.0%
  cache_references   2.95K  ±  923       173   … 3.89K          41 (10%)        ⚡- 57.4% ±  2.2%
  cache_misses        185   ±  428         0   … 2.80K          84 (20%)        ⚡- 66.1% ± 18.5%
  branch_misses      1.02K  ±  260        84   … 1.16K          56 (13%)        ⚡- 64.2% ±  0.9%


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

