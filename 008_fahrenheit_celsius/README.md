# Fahrenheit to Celsius temperature



```
# takes digits before point only
$ make run1
./program_c
Fahrenheit      Celsius
0       -17
20      -6
40      4
60      15
80      26
100     37
120     48
140     60
160     71
180     82
200     93
220     104
240     115
260     126
280     137
300     148
done!


# rounded float to int
./program_nim
Fahrenheit      Celsius
0       -18
20      -7
40      4
60      16
80      27
100     38
120     49
140     60
160     71
180     82
200     93
220     104
240     116
260     127
280     138
300     149
done!


# take part before point like in C
$ make run2
./program_nim
Fahrenheit      Celsius
0       -17
20      -6
40      4
60      15
80      26
100     37
120     48
140     60
160     71
180     82
200     93
220     104
240     115
260     126
280     137
300     148
done!


# Nim - takes digits before point only
$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           235us ± 48.3us     202us … 1.51ms       1564 (16%)        0%
  peak_rss           1.62MB ± 36.9KB    1.56MB … 1.73MB        611 ( 6%)        0%
  cpu_cycles          226K  ± 5.15K      190K  …  307K        1120 (11%)        0%
  instructions        159K  ±  307       128K  …  159K          39 ( 0%)        0%
  cache_references   2.44K  ±  759      1.26K  … 6.67K        1379 (14%)        0%
  cache_misses       8.47   ± 36.5         0   … 3.47K         674 ( 7%)        0%
  branch_misses      2.07K  ±  190       763   … 2.40K        1261 (13%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           248us ± 42.8us     214us … 1.76ms       1553 (16%)        💩+  5.3% ±  0.5%
  peak_rss           1.61MB ± 55.1KB    1.49MB … 1.69MB          0 ( 0%)          -  0.5% ±  0.1%
  cpu_cycles          248K  ± 5.38K     85.4K  …  311K         906 ( 9%)        💩+  9.7% ±  0.1%
  instructions        183K  ± 1.41K     42.0K  …  183K        2497 (25%)        💩+ 15.2% ±  0.0%
  cache_references   2.90K  ±  696       159   … 7.36K        1480 (15%)        💩+ 18.8% ±  0.8%
  cache_misses       8.95   ± 11.7         0   …  597          571 ( 6%)          +  5.7% ±  8.9%
  branch_misses      2.32K  ±  185       416   … 2.67K        1178 (12%)        💩+ 11.9% ±  0.3%


# Nim - take part before point like in C
$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           245us ± 79.0us     203us … 1.57ms       1841 (18%)        0%
  peak_rss           1.62MB ± 37.6KB    1.56MB … 1.73MB        644 ( 6%)        0%
  cpu_cycles          226K  ± 5.19K      115K  …  284K        1163 (12%)        0%
  instructions        159K  ± 1.08K     50.6K  …  159K          39 ( 0%)        0%
  cache_references   2.53K  ±  821       439   … 6.81K        1716 (17%)        0%
  cache_misses       10.8   ± 43.5         0   … 3.92K         817 ( 8%)        0%
  branch_misses      2.07K  ±  181       817   … 2.37K        1268 (13%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           256us ± 57.9us     217us … 1.55ms       1624 (16%)        💩+  4.3% ±  0.8%
  peak_rss           1.61MB ± 55.0KB    1.49MB … 1.69MB          0 ( 0%)          -  0.5% ±  0.1%
  cpu_cycles          248K  ± 5.30K      214K  …  334K         836 ( 8%)        💩+  9.7% ±  0.1%
  instructions        183K  ± 58.9       183K  …  183K           0 ( 0%)        💩+ 15.3% ±  0.0%
  cache_references   2.93K  ±  799      1.61K  … 7.19K        1792 (18%)        💩+ 15.6% ±  0.9%
  cache_misses       14.3   ± 50.8         0   … 4.53K         948 ( 9%)        💩+ 32.7% ± 12.1%
  branch_misses      2.32K  ±  178       845   … 2.65K        1134 (11%)        💩+ 11.8% ±  0.2%
```

