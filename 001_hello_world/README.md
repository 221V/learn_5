# hello world

```
# C and Nim
$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           231us ± 65.2us     196us … 1.67ms       1746 (17%)        0%
  peak_rss           1.40MB ± 46.2KB    1.29MB … 1.47MB          0 ( 0%)        0%
  cpu_cycles          217K  ± 5.37K        0   …  277K        1112 (11%)        0%
  instructions        141K  ± 1.41K        0   …  142K          50 ( 1%)        0%
  cache_references   2.26K  ±  749         0   … 6.37K        1190 (12%)        0%
  cache_misses       7.47   ± 10.7         0   …  587          634 ( 6%)        0%
  branch_misses      2.00K  ±  183         0   … 2.32K        1212 (12%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           252us ± 78.8us     204us … 1.42ms       1771 (18%)        💩+  8.9% ±  0.9%
  peak_rss           1.59MB ± 51.8KB    1.47MB … 1.68MB          0 ( 0%)        💩+ 13.4% ±  0.1%
  cpu_cycles          231K  ± 5.23K      199K  …  300K        1030 (10%)        💩+  6.5% ±  0.1%
  instructions        154K  ± 2.47       154K  …  154K          47 ( 0%)        💩+  9.1% ±  0.0%
  cache_references   2.55K  ±  870      1.32K  … 6.60K         860 ( 9%)        💩+ 13.0% ±  1.0%
  cache_misses       9.62   ± 14.7         0   …  347          700 ( 7%)        💩+ 28.8% ±  4.8%
  branch_misses      2.18K  ±  180       874   … 2.50K        1201 (12%)        💩+  9.0% ±  0.3%


# C program v2 -- with variable -- and Nim
$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           224us ± 55.6us     193us … 1.52ms       1421 (14%)        0%
  peak_rss           1.40MB ± 45.8KB    1.29MB … 1.47MB          0 ( 0%)        0%
  cpu_cycles          216K  ± 5.04K      184K  …  263K        1084 (11%)        0%
  instructions        142K  ± 2.21       142K  …  142K          83 ( 1%)        0%
  cache_references   2.31K  ±  673      1.23K  … 6.72K        1289 (13%)        0%
  cache_misses       7.88   ± 43.4         0   … 4.16K         557 ( 6%)        0%
  branch_misses      1.99K  ±  186       660   … 2.30K        1248 (12%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           244us ± 57.5us     207us … 1.38ms       1739 (17%)        💩+  8.9% ±  0.7%
  peak_rss           1.59MB ± 51.9KB    1.47MB … 1.68MB          0 ( 0%)        💩+ 13.8% ±  0.1%
  cpu_cycles          230K  ± 5.21K      192K  …  314K         961 (10%)        💩+  6.7% ±  0.1%
  instructions        154K  ± 2.49       154K  …  154K          43 ( 0%)        💩+  8.6% ±  0.0%
  cache_references   2.57K  ±  792      1.47K  … 6.69K        1289 (13%)        💩+ 11.0% ±  0.9%
  cache_misses       7.83   ± 11.2         0   …  430          667 ( 7%)          -  0.7% ± 11.1%
  branch_misses      2.18K  ±  190       599   … 2.47K        1210 (12%)        💩+  9.1% ±  0.3%


# C and D (writeln, no --betterC)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           235us ± 76.9us     195us … 1.47ms       1739 (17%)        0%
  peak_rss           1.40MB ± 46.0KB    1.29MB … 1.47MB          0 ( 0%)        0%
  cpu_cycles          216K  ± 5.60K     6.76K  …  277K        1155 (12%)        0%
  instructions        141K  ± 1.68K     2.35K  …  142K          46 ( 0%)        0%
  cache_references   2.22K  ±  803        65   … 6.36K        1563 (16%)        0%
  cache_misses       6.98   ± 21.2         0   … 1.90K         637 ( 6%)        0%
  branch_misses      2.00K  ±  188        32   … 2.33K        1216 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           244us ± 88.9us     201us … 1.34ms       1779 (18%)        💩+  3.7% ±  1.0%
  peak_rss           1.71MB ± 2.02KB    1.71MB … 1.72MB          0 ( 0%)        💩+ 22.2% ±  0.1%
  cpu_cycles          254K  ± 21.4K        0   …  416K        1758 (18%)        💩+ 17.5% ±  0.2%
  instructions        281K  ± 2.81K        0   …  282K          11 ( 0%)        💩+ 98.9% ±  0.0%
  cache_references    770   ±  930         0   … 5.33K        1124 (11%)        ⚡- 65.3% ±  1.1%
  cache_misses       7.95   ± 57.6         0   … 4.14K         881 ( 9%)          + 13.9% ± 17.2%
  branch_misses       365   ±  566         0   … 2.63K        1573 (16%)        ⚡- 81.7% ±  0.6%


# Nim and D (writeln, no --betterC)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           241us ± 57.7us     202us … 1.31ms       1714 (17%)        0%
  peak_rss           1.59MB ± 51.8KB    1.47MB … 1.68MB          0 ( 0%)        0%
  cpu_cycles          231K  ± 5.15K      198K  …  272K        1007 (10%)        0%
  instructions        154K  ± 2.48       154K  …  154K          58 ( 1%)        0%
  cache_references   2.54K  ±  777      1.26K  … 6.80K        1825 (18%)        0%
  cache_misses       7.69   ± 25.4         0   … 2.27K         597 ( 6%)        0%
  branch_misses      2.18K  ±  181       850   … 2.54K        1221 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           248us ± 97.6us     199us … 1.25ms       1415 (14%)        💩+  2.9% ±  0.9%
  peak_rss           1.71MB ± 2.03KB    1.71MB … 1.72MB          0 ( 0%)        💩+  7.8% ±  0.1%
  cpu_cycles          254K  ± 21.3K     16.0K  …  498K        1668 (17%)        💩+ 10.3% ±  0.2%
  instructions        281K  ± 2.74K     7.56K  …  282K           9 ( 0%)        💩+ 82.3% ±  0.0%
  cache_references    824   ±  893       229   … 5.17K        1232 (12%)        ⚡- 67.5% ±  0.9%
  cache_misses       17.2   ± 88.9         0   … 4.07K         990 (10%)        💩+123.6% ± 23.6%
  branch_misses       356   ±  550       144   … 2.66K        1582 (16%)        ⚡- 83.7% ±  0.5%



# C and D (with printf and --betterC)
$ make poop13
poop ./program_c ./program_d
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           235us ± 68.6us     195us … 1.35ms       1561 (16%)        0%
  peak_rss           1.40MB ± 45.8KB    1.29MB … 1.47MB          0 ( 0%)        0%
  cpu_cycles          216K  ± 5.49K        0   …  291K        1048 (10%)        0%
  instructions        141K  ± 1.41K        0   …  142K          46 ( 0%)        0%
  cache_references   2.31K  ±  763         0   … 6.40K        1531 (15%)        0%
  cache_misses       7.50   ± 23.9         0   … 2.13K         568 ( 6%)        0%
  branch_misses      2.00K  ±  176         0   … 2.32K        1215 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           142us ± 38.6us     125us … 1.30ms       1511 (15%)        ⚡- 39.5% ±  0.7%
  peak_rss            905KB ±    0       905KB …  905KB          0 ( 0%)        ⚡- 35.4% ±  0.1%
  cpu_cycles          102K  ± 4.67K     99.6K  …  166K         678 ( 7%)        ⚡- 53.0% ±  0.1%
  instructions       54.2K  ± 0.45      54.2K  … 54.2K        2495 (25%)        ⚡- 61.7% ±  0.0%
  cache_references    128   ±  280        18   … 2.44K         742 ( 7%)        ⚡- 94.4% ±  0.7%
  cache_misses       2.94   ± 24.9         0   … 1.82K         729 ( 7%)        ⚡- 60.8% ±  9.0%
  branch_misses      37.9   ±  112         9   …  893          688 ( 7%)        ⚡- 98.1% ±  0.2%


# Nim and D (with printf and --betterC)
$ make poop23
poop ./program_nim ./program_d
Benchmark 1 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           247us ± 73.3us     203us … 1.80ms       1763 (18%)        0%
  peak_rss           1.59MB ± 51.8KB    1.47MB … 1.68MB          0 ( 0%)        0%
  cpu_cycles          231K  ± 5.26K      197K  …  310K        1026 (10%)        0%
  instructions        154K  ± 2.29       154K  …  154K          32 ( 0%)        0%
  cache_references   2.62K  ±  796      1.44K  … 7.66K        1438 (14%)        0%
  cache_misses       7.81   ± 32.4         0   … 2.99K         618 ( 6%)        0%
  branch_misses      2.18K  ±  189       653   … 2.50K        1223 (12%)        0%
Benchmark 2 (10000 runs): ./program_d
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           152us ± 50.2us     126us … 1.43ms       1777 (18%)        ⚡- 38.6% ±  0.7%
  peak_rss            901KB ±    0       901KB …  901KB          0 ( 0%)        ⚡- 43.3% ±  0.1%
  cpu_cycles          102K  ± 5.41K        0   …  165K         806 ( 8%)        ⚡- 55.9% ±  0.1%
  instructions       54.2K  ±  542         0   … 54.2K          12 ( 0%)        ⚡- 64.9% ±  0.0%
  cache_references    128   ±  313         0   … 2.40K         818 ( 8%)        ⚡- 95.1% ±  0.6%
  cache_misses       3.19   ± 26.5         0   … 1.75K         766 ( 8%)        ⚡- 59.2% ± 10.5%
  branch_misses      44.1   ±  129         0   …  916          913 ( 9%)        ⚡- 98.0% ±  0.2%
```

