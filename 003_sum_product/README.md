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


# OCaml v2 program
$ make poop41
poop ./program_c ./program_oc
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           246us ± 72.1us     201us … 1.34ms       1935 (19%)        0%
  peak_rss           1.62MB ± 36.5KB    1.56MB … 1.73MB        596 ( 6%)        0%
  cpu_cycles          224K  ± 5.01K      191K  …  263K        1054 (11%)        0%
  instructions        146K  ± 1.98       146K  …  146K          34 ( 0%)        0%
  cache_references   2.89K  ±  743      1.68K  … 7.24K        1396 (14%)        0%
  cache_misses       7.18   ± 25.5         0   … 2.29K         562 ( 6%)        0%
  branch_misses      2.05K  ±  185       682   … 2.37K        1182 (12%)        0%
Benchmark 2 (9058 runs): ./program_oc
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           536us ± 81.3us     419us … 1.74ms        467 ( 5%)        💩+117.8% ±  0.9%
  peak_rss           3.02MB ± 64.8KB    2.87MB … 3.14MB          0 ( 0%)        💩+ 86.7% ±  0.1%
  cpu_cycles          550K  ± 8.25K      513K  …  626K         133 ( 1%)        💩+145.7% ±  0.1%
  instructions        491K  ± 2.81       491K  …  491K         145 ( 2%)        💩+235.2% ±  0.0%
  cache_references   12.4K  ±  644      9.23K  … 17.1K        1395 (15%)        💩+329.6% ±  0.7%
  cache_misses       26.4   ± 76.5         0   … 5.76K         837 ( 9%)        💩+267.2% ± 22.1%
  branch_misses      5.71K  ±  193      4.52K  … 6.47K         267 ( 3%)        💩+178.9% ±  0.3%


# OCaml v1 program -- todo bench time for v1 program with more cycles inside the program (OCaml VM may starts long time so bench with poop can be error)
$ make poop41
poop ./program_c ./program_oc
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           238us ± 61.4us     203us … 1.04ms       1700 (17%)        0%
  peak_rss           1.62MB ± 37.7KB    1.56MB … 1.73MB        660 ( 7%)        0%
  cpu_cycles          224K  ± 5.13K      188K  …  310K        1020 (10%)        0%
  instructions        146K  ± 2.05       146K  …  146K          37 ( 0%)        0%
  cache_references   2.72K  ±  700      1.44K  … 6.57K         881 ( 9%)        0%
  cache_misses       9.37   ± 46.9         0   … 4.47K         562 ( 6%)        0%
  branch_misses      2.05K  ±  185       579   … 2.37K        1230 (12%)        0%
Benchmark 2 (8808 runs): ./program_oc
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           551us ±  120us     418us … 1.36ms        693 ( 8%)        💩+131.6% ±  1.1%
  peak_rss           3.02MB ± 64.5KB    2.87MB … 3.14MB          0 ( 0%)        💩+ 86.5% ±  0.1%
  cpu_cycles          547K  ± 9.05K      514K  …  667K          34 ( 0%)        💩+144.5% ±  0.1%
  instructions        490K  ± 2.86       490K  …  490K         151 ( 2%)        💩+235.0% ±  0.0%
  cache_references   12.0K  ±  700      7.77K  … 18.1K         111 ( 1%)        💩+340.4% ±  0.7%
  cache_misses       30.4   ± 78.2         0   … 5.99K         798 ( 9%)        💩+224.0% ± 19.4%
  branch_misses      5.60K  ±  152      4.43K  … 6.08K         406 ( 5%)        💩+173.1% ±  0.2%


# OCaml v2 program
$ make poop43
poop ./program_oc ./program_d
Benchmark 1 (8774 runs): ./program_oc
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           550us ±  119us     421us … 1.79ms        696 ( 8%)        0%
  peak_rss           3.02MB ± 65.1KB    2.85MB … 3.14MB          0 ( 0%)        0%
  cpu_cycles          551K  ± 8.76K      515K  …  639K          74 ( 1%)        0%
  instructions        491K  ± 2.82       491K  …  491K         151 ( 2%)        0%
  cache_references   12.3K  ±  650      9.49K  … 17.6K         302 ( 3%)        0%
  cache_misses       28.5   ±  112         0   … 9.12K         846 (10%)        0%
  branch_misses      5.70K  ±  199      4.57K  … 6.34K         225 ( 3%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           148us ± 38.5us     129us … 1.18ms       1622 (16%)        ⚡- 73.1% ±  0.4%
  peak_rss            901KB ±    0       901KB …  901KB          0 ( 0%)        ⚡- 70.2% ±  0.0%
  cpu_cycles          105K  ± 5.23K      103K  …  183K         682 ( 7%)        ⚡- 80.9% ±  0.0%
  instructions       58.9K  ± 0.44      58.9K  … 58.9K           3 ( 0%)        ⚡- 88.0% ±  0.0%
  cache_references    117   ±  308         9   … 2.54K         656 ( 7%)        ⚡- 99.0% ±  0.1%
  cache_misses       3.26   ± 29.5         0   … 1.98K         788 ( 8%)        ⚡- 88.6% ±  8.0%
  branch_misses      42.2   ±  127         7   …  933          710 ( 7%)        ⚡- 99.3% ±  0.1%


# OCaml v1 program
$ make poop43
poop ./program_oc ./program_d
Benchmark 1 (8814 runs): ./program_oc
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           549us ±  117us     413us … 1.93ms        654 ( 7%)        0%
  peak_rss           3.02MB ± 65.2KB    2.86MB … 3.14MB          0 ( 0%)        0%
  cpu_cycles          546K  ± 8.37K      516K  …  636K          99 ( 1%)        0%
  instructions        490K  ± 2.85       490K  …  490K         144 ( 2%)        0%
  cache_references   12.1K  ±  654      8.89K  … 17.0K        1452 (16%)        0%
  cache_misses       28.5   ± 81.3         0   … 5.84K         737 ( 8%)        0%
  branch_misses      5.60K  ±  157      4.59K  … 6.06K         465 ( 5%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           152us ± 63.6us     128us … 4.26ms       1883 (19%)        ⚡- 72.2% ±  0.5%
  peak_rss            901KB ±    0       901KB …  901KB          0 ( 0%)        ⚡- 70.2% ±  0.0%
  cpu_cycles          105K  ± 5.57K      103K  …  176K         681 ( 7%)        ⚡- 80.7% ±  0.0%
  instructions       58.9K  ± 0.44      58.9K  … 58.9K        2412 (24%)        ⚡- 88.0% ±  0.0%
  cache_references    129   ±  336         9   … 2.61K         682 ( 7%)        ⚡- 98.9% ±  0.1%
  cache_misses       2.87   ± 26.6         0   … 2.00K         685 ( 7%)        ⚡- 90.0% ±  5.9%
  branch_misses      45.0   ±  136         6   …  946          688 ( 7%)        ⚡- 99.2% ±  0.1%


# OCaml v2 program
$ poop ./program_oc ./program_nim
Benchmark 1 (8880 runs): ./program_oc
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           544us ±  107us     420us … 1.99ms        638 ( 7%)        0%
  peak_rss           3.02MB ± 64.6KB    2.86MB … 3.14MB          0 ( 0%)        0%
  cpu_cycles          548K  ± 8.86K      514K  …  642K          83 ( 1%)        0%
  instructions        488K  ±  120       476K  …  488K         137 ( 2%)        0%
  cache_references   12.3K  ±  677      9.38K  … 17.4K        1002 (11%)        0%
  cache_misses       32.1   ±  117         0   … 9.65K         755 ( 9%)        0%
  branch_misses      5.66K  ±  190      4.63K  … 6.25K         261 ( 3%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           246us ± 54.6us     213us … 1.29ms       1532 (15%)        ⚡- 54.8% ±  0.4%
  peak_rss           1.61MB ± 55.9KB    1.50MB … 1.70MB          0 ( 0%)        ⚡- 46.5% ±  0.1%
  cpu_cycles          237K  ± 4.99K      206K  …  334K         786 ( 8%)        ⚡- 56.7% ±  0.0%
  instructions        158K  ± 5.54       157K  …  158K         992 (10%)        ⚡- 67.7% ±  0.0%
  cache_references   3.09K  ±  702      1.67K  … 7.01K         597 ( 6%)        ⚡- 74.9% ±  0.2%
  cache_misses       9.35   ± 15.8         0   …  855          594 ( 6%)        ⚡- 70.9% ±  7.2%
  branch_misses      2.19K  ±  175       964   … 2.50K        1244 (12%)        ⚡- 61.2% ±  0.1%


# same for C and Nim and D and OCaml
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

