# read from file && write to file

got Median of Three  
https://github.com/221V/solved_problems/tree/master/10-median_of_three  

```
# data:

7 3 5

15 20 40

300 550 137

# answer:

5 20 300

#####################

$ make run1
./program_c
7 3 5
5
15 20 40
20
300 550 137
300
done!


$ make run2
./program_nim
7 3 5
5
15 20 40
20
300 550 137
300
done!


$ make run3
./program_d
7 3 5
5
15 20 40
20
300 550 137
300
done!


$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           270us ± 91.3us     217us … 2.10ms       1845 (18%)        0%
  peak_rss           1.74MB ± 47.6KB    1.66MB … 1.83MB          0 ( 0%)        0%
  cpu_cycles          248K  ± 5.28K      214K  …  319K         825 ( 8%)        0%
  instructions        162K  ±  177       144K  …  162K          73 ( 1%)        0%
  cache_references   3.45K  ±  830      2.06K  … 7.49K        1112 (11%)        0%
  cache_misses       11.4   ± 49.8         0   … 4.59K         583 ( 6%)        0%
  branch_misses      2.40K  ±  199       996   … 2.82K        1031 (10%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           272us ± 56.8us     234us … 1.54ms       1737 (17%)          +  0.8% ±  0.8%
  peak_rss           1.68MB ± 43.0KB    1.61MB … 1.76MB          0 ( 0%)        ⚡-  3.3% ±  0.1%
  cpu_cycles          268K  ± 5.00K      148K  …  327K         705 ( 7%)        💩+  8.0% ±  0.1%
  instructions        184K  ± 1.20K     63.3K  …  184K        2540 (25%)        💩+ 13.7% ±  0.0%
  cache_references   3.77K  ±  687       813   … 7.47K        1539 (15%)        💩+  9.2% ±  0.6%
  cache_misses       10.3   ± 12.4         0   …  791          534 ( 5%)          -  9.6% ±  8.8%
  branch_misses      2.68K  ±  183      1.05K  … 3.03K        1021 (10%)        💩+ 11.7% ±  0.2%
```

