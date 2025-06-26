# sum && product


```
$ make poop12
poop ./program_c ./output/program/program
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           236us ± 53.1us     206us … 1.31ms       1482 (15%)        0%
  peak_rss           1.62MB ± 38.5KB    1.56MB … 1.74MB        694 ( 7%)        0%
  cpu_cycles          223K  ± 5.74K      719   …  333K        1018 (10%)        0%
  instructions        146K  ± 1.53K        1   …  146K          50 ( 1%)        0%
  cache_references   2.52K  ±  652         0   … 6.86K        1022 (10%)        0%
  cache_misses       20.5   ± 51.3         0   … 4.40K         780 ( 8%)        0%
  branch_misses      2.05K  ±  180         0   … 2.42K        1217 (12%)        0%
Benchmark 2 (10000 runs): ./output/program/program
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           241us ± 51.0us     205us … 1.12ms       1457 (15%)        💩+  1.8% ±  0.6%
  peak_rss           1.59MB ± 47.1KB    1.50MB … 1.68MB          0 ( 0%)        ⚡-  2.2% ±  0.1%
  cpu_cycles          224K  ± 5.56K        0   …  275K        1043 (10%)          +  0.2% ±  0.1%
  instructions        146K  ± 1.87K        0   …  146K          62 ( 1%)          -  0.1% ±  0.0%
  cache_references   2.62K  ±  705         0   … 6.73K        1096 (11%)        💩+  3.7% ±  0.7%
  cache_misses       15.1   ± 17.0         0   …  385          618 ( 6%)        ⚡- 26.6% ±  5.2%
  branch_misses      2.07K  ±  184         0   … 2.43K        1204 (12%)          +  1.2% ±  0.2%

$ make poop12
poop ./program_c ./output/program/program
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           250us ± 79.0us     202us … 1.34ms       1661 (17%)        0%
  peak_rss           1.62MB ± 37.6KB    1.56MB … 1.74MB        651 ( 7%)        0%
  cpu_cycles          223K  ± 5.25K      190K  …  303K        1083 (11%)        0%
  instructions        146K  ± 2.28       146K  …  146K          47 ( 0%)        0%
  cache_references   2.51K  ±  826      1.18K  … 6.47K         785 ( 8%)        0%
  cache_misses       16.7   ± 47.0         0   … 4.28K         559 ( 6%)        0%
  branch_misses      2.04K  ±  184       666   … 2.40K        1253 (13%)        0%
Benchmark 2 (10000 runs): ./output/program/program
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           237us ± 47.8us     201us … 1.11ms       1312 (13%)        ⚡-  5.1% ±  0.7%
  peak_rss           1.59MB ± 47.1KB    1.50MB … 1.68MB          0 ( 0%)        ⚡-  2.2% ±  0.1%
  cpu_cycles          224K  ± 5.30K      189K  …  344K         963 (10%)          +  0.2% ±  0.1%
  instructions        146K  ± 2.13       146K  …  146K          45 ( 0%)          -  0.0% ±  0.0%
  cache_references   2.38K  ±  716      1.27K  … 6.44K         546 ( 5%)        ⚡-  5.4% ±  0.9%
  cache_misses       18.3   ± 22.6         0   …  411          675 ( 7%)        💩+  9.7% ±  6.1%
  branch_misses      2.07K  ±  185       585   … 2.42K        1182 (12%)        💩+  1.4% ±  0.3%


$ make poop13
poop ./program_c ./program_d
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           245us ± 75.6us     202us … 1.86ms       1660 (17%)        0%
  peak_rss           1.62MB ± 36.8KB    1.56MB … 1.73MB        599 ( 6%)        0%
  cpu_cycles          222K  ± 5.43K     28.9K  …  312K        1167 (12%)        0%
  instructions        144K  ± 1.05K     38.7K  …  144K          40 ( 0%)        0%
  cache_references   2.61K  ±  766       134   … 6.80K        1500 (15%)        0%
  cache_misses       7.98   ± 30.9         0   … 2.77K         656 ( 7%)        0%
  branch_misses      2.04K  ±  180       384   … 2.41K        1184 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           155us ± 52.8us     129us … 1.42ms       1860 (19%)        ⚡- 36.8% ±  0.7%
  peak_rss            901KB ±    0       901KB …  901KB          0 ( 0%)        ⚡- 44.3% ±  0.0%
  cpu_cycles          105K  ± 5.79K        0   …  180K         742 ( 7%)        ⚡- 52.8% ±  0.1%
  instructions       55.8K  ±  558         0   … 55.8K        2495 (25%)        ⚡- 61.2% ±  0.0%
  cache_references    194   ±  338         0   … 2.66K         795 ( 8%)        ⚡- 92.6% ±  0.6%
  cache_misses       3.34   ± 27.8         0   … 1.97K         857 ( 9%)        ⚡- 58.2% ± 10.2%
  branch_misses      44.5   ±  139         0   …  914          841 ( 8%)        ⚡- 97.8% ±  0.2%


$ make poop15
poop ./program_c ./program_zig
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           210us ± 51.9us     175us … 1.07ms       1265 (13%)        0%
  peak_rss           1.62MB ± 37.8KB    1.56MB … 1.74MB        665 ( 7%)        0%
  cpu_cycles          231K  ± 6.73K      128K  …  363K        1102 (11%)        0%
  instructions        147K  ± 1.50K     58.1K  …  147K          37 ( 0%)        0%
  cache_references   2.45K  ±  820       552   … 7.20K        1185 (12%)        0%
  cache_misses       14.2   ± 45.0         0   … 4.06K         681 ( 7%)        0%
  branch_misses      2.05K  ±  172       768   … 2.35K        1274 (13%)        0%
Benchmark 2 (10000 runs): ./program_zig
  measurement          mean ± σ            min … max           outliers         delta
  wall_time          75.7us ± 34.8us    59.4us … 1.10ms       1342 (13%)        ⚡- 63.9% ±  0.6%
  peak_rss            905KB ±    0       905KB …  905KB          0 ( 0%)        ⚡- 44.3% ±  0.0%
  cpu_cycles         5.00K  ±  329      4.77K  … 15.9K        1403 (14%)        ⚡- 97.8% ±  0.1%
  instructions       1.15K  ± 0.29      1.15K  … 1.15K         930 ( 9%)        ⚡- 99.2% ±  0.0%
  cache_references   3.87   ± 17.0         0   …  164         1784 (18%)        ⚡- 99.8% ±  0.7%
  cache_misses       0.54   ± 2.07         0   …   79         1817 (18%)        ⚡- 96.2% ±  6.2%
  branch_misses      11.1   ± 5.82         3   …   53         1413 (14%)        ⚡- 99.5% ±  0.2%


# same for C and C2 and D and Zig
Sum numbers 1-100:
5050
Product numbers 1-15:
1307674368000



# real value (Erlang)

-module(test1).
-compile([export_all, nowarn_export_all]).

fact(N) -> fact(N, 1).
fact(0, A) -> A;
fact(N, A) when N > 0 -> fact(N - 1, N * A).

# %%%

> test1:fact(25).
15511210043330985984000000

> test1:fact(100).
93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
```

