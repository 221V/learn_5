# sum && product


```
$ make poop12
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


# same for C and Nim
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

