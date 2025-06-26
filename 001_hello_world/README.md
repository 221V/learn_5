# hello world

```
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
```

