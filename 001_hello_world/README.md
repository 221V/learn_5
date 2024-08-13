# hello world

```
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


## C program v2 -- with variable
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
```

