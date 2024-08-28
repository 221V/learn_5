# reverse string



```
$ make run1
./program_c
hello -> olleh
world -> dlrow
Assertion passed! -> !dessap noitressA
done!


Nim -- same output


$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           236us ± 60.6us     201us … 1.81ms       1681 (17%)        0%
  peak_rss           1.55MB ± 35.1KB    1.48MB … 1.67MB        629 ( 6%)        0%
  cpu_cycles          225K  ± 5.01K      192K  …  307K        1118 (11%)        0%
  instructions        148K  ± 16.1       148K  …  148K         377 ( 4%)        0%
  cache_references   2.43K  ±  761      1.19K  … 6.49K        1510 (15%)        0%
  cache_misses       9.22   ± 36.2         0   … 3.27K         740 ( 7%)        0%
  branch_misses      2.10K  ±  176       682   … 2.40K        1160 (12%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           262us ± 86.7us     212us … 1.34ms       1664 (17%)        💩+ 11.1% ±  0.9%
  peak_rss           1.61MB ± 51.6KB    1.50MB … 1.70MB          0 ( 0%)        💩+  3.9% ±  0.1%
  cpu_cycles          241K  ± 5.44K      207K  …  311K         899 ( 9%)        💩+  7.1% ±  0.1%
  instructions        161K  ±  134       148K  …  161K        1111 (11%)        💩+  9.3% ±  0.0%
  cache_references   2.91K  ±  836      1.31K  … 6.90K        1747 (17%)        💩+ 20.0% ±  0.9%
  cache_misses       10.8   ± 14.1         0   …  525          484 ( 5%)        💩+ 17.6% ±  8.3%
  branch_misses      2.29K  ±  185       944   … 2.61K        1170 (12%)        💩+  9.1% ±  0.2%
```

