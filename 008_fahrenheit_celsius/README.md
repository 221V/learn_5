# Fahrenheit to Celsius temperature



```
$ make run1
./program_c
Fahrenheit   Celsius
  0    -17.8
 20     -6.7
 40      4.4
 60     15.6
 80     26.7
100     37.8
120     48.9
140     60.0
160     71.1
180     82.2
200     93.3
220    104.4
240    115.6
260    126.7
280    137.8
300    148.9
done!


# Nim - with while and formatFloat
$ make run2
./program_nim
Fahrenheit   Celsius
0.0   -17.8
20.0   -6.7
40.0   4.4
60.0   15.6
80.0   26.7
100.0   37.8
120.0   48.9
140.0   60.0
160.0   71.1
180.0   82.2
200.0   93.3
220.0   104.4
240.0   115.6
260.0   126.7
280.0   137.8
300.0   148.9
done!


$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           266us ± 82.3us     214us … 1.58ms       1222 (12%)        0%
  peak_rss           1.72MB ± 46.5KB    1.61MB … 1.77MB          0 ( 0%)        0%
  cpu_cycles          251K  ± 5.66K      217K  …  329K         883 ( 9%)        0%
  instructions        201K  ± 2.07       201K  …  201K          34 ( 0%)        0%
  cache_references   2.93K  ±  890      1.12K  … 7.20K        1267 (13%)        0%
  cache_misses       15.6   ± 36.6         0   … 3.21K         626 ( 6%)        0%
  branch_misses      2.41K  ±  207       865   … 2.81K        1033 (10%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           277us ± 61.2us     235us … 1.52ms       1743 (17%)        💩+  4.3% ±  0.8%
  peak_rss           1.81MB ± 61.2KB    1.67MB … 1.90MB          0 ( 0%)        💩+  5.2% ±  0.1%
  cpu_cycles          286K  ± 5.89K      253K  …  373K         692 ( 7%)        💩+ 13.9% ±  0.1%
  instructions        248K  ± 59.0       247K  …  248K        2582 (26%)        💩+ 22.9% ±  0.0%
  cache_references   3.37K  ±  855      2.17K  … 8.15K         644 ( 6%)        💩+ 14.9% ±  0.8%
  cache_misses       18.7   ± 20.1         0   …  735          654 ( 7%)        💩+ 19.6% ±  5.2%
  branch_misses      2.75K  ±  219      1.33K  … 3.17K         889 ( 9%)        💩+ 14.2% ±  0.2%
```

