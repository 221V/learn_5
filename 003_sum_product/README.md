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


$ make poop121
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           239us ± 73.6us     196us … 1.68ms       1724 (17%)        0%
  peak_rss           1.62MB ± 37.1KB    1.56MB … 1.73MB        625 ( 6%)        0%
  cpu_cycles          222K  ± 5.16K      182K  …  289K        1179 (12%)        0%
  instructions        144K  ± 65.3       137K  …  144K          43 ( 0%)        0%
  cache_references   2.29K  ±  823      1.10K  … 6.63K         683 ( 7%)        0%
  cache_misses       10.9   ± 31.5         0   … 2.63K         815 ( 8%)        0%
  branch_misses      2.04K  ±  191       507   … 2.39K        1261 (13%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           255us ± 67.4us     212us … 1.55ms       1754 (18%)        💩+  6.5% ±  0.8%
  peak_rss           1.61MB ± 55.1KB    1.50MB … 1.70MB          0 ( 0%)          -  0.2% ±  0.1%
  cpu_cycles          238K  ± 5.01K      207K  …  297K         827 ( 8%)        💩+  7.4% ±  0.1%
  instructions        158K  ± 5.78       158K  …  158K          87 ( 1%)        💩+  9.9% ±  0.0%
  cache_references   2.87K  ±  805      1.53K  … 6.99K         718 ( 7%)        💩+ 25.3% ±  1.0%
  cache_misses       10.2   ± 13.6         0   …  531          559 ( 6%)          -  6.1% ±  6.2%
  branch_misses      2.24K  ±  179       871   … 2.57K        1122 (11%)        💩+ 10.1% ±  0.3%


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


$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           253us ± 72.0us     211us … 2.14ms       1800 (18%)        0%
  peak_rss           1.61MB ± 55.3KB    1.50MB … 1.70MB          0 ( 0%)        0%
  cpu_cycles          238K  ± 4.96K      206K  …  301K         875 ( 9%)        0%
  instructions        158K  ± 78.5       150K  …  158K        1055 (11%)        0%
  cache_references   2.94K  ±  749      1.73K  … 6.96K        1683 (17%)        0%
  cache_misses       8.00   ± 48.0         0   … 4.61K         597 ( 6%)        0%
  branch_misses      2.24K  ±  176       937   … 2.56K        1118 (11%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           150us ± 46.6us     128us … 1.71ms       1821 (18%)        ⚡- 40.6% ±  0.7%
  peak_rss            905KB ±    0       905KB …  905KB          0 ( 0%)        ⚡- 43.9% ±  0.1%
  cpu_cycles          105K  ± 5.85K      102K  …  200K         803 ( 8%)        ⚡- 56.1% ±  0.1%
  instructions       55.8K  ± 0.44      55.8K  … 55.8K           2 ( 0%)        ⚡- 64.7% ±  0.0%
  cache_references    189   ±  332        35   … 2.57K         681 ( 7%)        ⚡- 93.6% ±  0.5%
  cache_misses       3.98   ± 33.0         0   … 1.99K        1080 (11%)        ⚡- 50.2% ± 14.3%
  branch_misses      44.8   ±  139         6   …  908          759 ( 8%)        ⚡- 98.0% ±  0.2%



# same for C and C2 and Nim and D
Sum numbers 1-100:
5050
Product numbers 1-15:
1307674368000


# but detected different Nim behavior on int overflow

var prod: uint64 = 1
echo "Product numbers 1-25:"

for num2 in 1'u64 .. 25'u64 :
  prod = prod * num2

echo prod

# returns
# Product numbers 1-25:
# 7034535277573963776



var prod: uint64 = 1
echo "Product numbers 1-100:"

for num2 in 1'u64 .. 100'u64 :
  prod = prod * num2

echo prod

# returns
# Product numbers 1-100:
# 0


# and signed -- fails in runtime

var prod: int64 = 1
echo "Product numbers 1-100:"

for num2 in 1'i64 .. 100'i64 :
  prod = prod * num2

echo prod

# Product numbers 1-100:
# fatal.nim(53)            sysFatal
# Error: unhandled exception: over- or underflow [OverflowDefect]


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

