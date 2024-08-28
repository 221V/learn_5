# user defined functions



```
$ make run1
./program_c
0:
1
1
1
1
1
1
---
1:
2
-3
3
4
-4
5
---
2:
4
9
9
16
16
25
---
3:
8
-27
27
64
-64
125
---
4:
16
81
81
256
256
625
---
5:
32
-243
243
1024
-1024
3125
---
6:
64
729
729
4096
4096
15625
---
7:
128
-2187
2187
16384
-16384
78125
---
8:
256
6561
6561
65536
65536
390625
---
9:
512
-19683
19683
262144
-262144
1953125
---
10:
1024
59049
59049
1048576
1048576
9765625
---
done!


Nim -- same output


$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           240us ± 56.6us     205us … 1.48ms       1684 (17%)        0%
  peak_rss           1.62MB ± 36.9KB    1.56MB … 1.73MB        615 ( 6%)        0%
  cpu_cycles          234K  ± 5.03K      201K  …  315K         935 ( 9%)        0%
  instructions        176K  ± 1.99       176K  …  176K          34 ( 0%)        0%
  cache_references   2.46K  ±  819      1.33K  … 6.67K        1583 (16%)        0%
  cache_misses       9.41   ± 12.8         0   …  462          597 ( 6%)        0%
  branch_misses      2.21K  ±  172       792   … 2.61K        1057 (11%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           275us ± 70.1us     229us … 1.50ms       1822 (18%)        💩+ 14.5% ±  0.7%
  peak_rss           1.61MB ± 54.9KB    1.49MB … 1.69MB          0 ( 0%)          -  0.4% ±  0.1%
  cpu_cycles          275K  ± 5.45K      105K  …  345K         741 ( 7%)        💩+ 17.4% ±  0.1%
  instructions        229K  ± 1.83K     45.3K  …  229K        2523 (25%)        💩+ 30.0% ±  0.0%
  cache_references   3.02K  ±  744       364   … 7.06K        1482 (15%)        💩+ 22.7% ±  0.9%
  cache_misses       8.71   ± 12.8         0   …  709          459 ( 5%)        ⚡-  7.4% ±  3.8%
  branch_misses      2.62K  ±  196       630   … 3.11K         991 (10%)        💩+ 18.5% ±  0.2%
```

