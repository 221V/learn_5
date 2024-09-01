# reverse string



```
# C language (own solution -- no std reverse string in gcc)
$ make run1
./program_c
hello -> olleh
world -> dlrow
Assertion passed! -> !dessap noitressA
done!



# Nim language (own solution) -- same output

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



# Nim language (std solution) -- same output

$ make poop12
poop ./program_c ./program_nim
Benchmark 1 (10000 runs): ./program_c
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           236us ± 73.5us     199us … 2.07ms       1645 (16%)        0%
  peak_rss           1.55MB ± 35.3KB    1.48MB … 1.67MB        651 ( 7%)        0%
  cpu_cycles          225K  ± 4.91K      193K  …  292K        1067 (11%)        0%
  instructions        148K  ± 16.4       148K  …  148K         381 ( 4%)        0%
  cache_references   2.39K  ±  794      1.25K  … 6.83K         727 ( 7%)        0%
  cache_misses       6.62   ± 10.4         0   …  650          491 ( 5%)        0%
  branch_misses      2.10K  ±  178       786   … 2.38K        1208 (12%)        0%
Benchmark 2 (10000 runs): ./program_nim
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           247us ± 50.3us     212us … 1.35ms       1607 (16%)        💩+  4.5% ±  0.7%
  peak_rss           1.62MB ± 55.1KB    1.50MB … 1.70MB          0 ( 0%)        💩+  4.1% ±  0.1%
  cpu_cycles          239K  ± 4.87K      206K  …  274K         869 ( 9%)        💩+  6.3% ±  0.1%
  instructions        159K  ± 5.43       159K  …  159K        1061 (11%)        💩+  7.6% ±  0.0%
  cache_references   2.84K  ±  754      1.63K  … 7.29K         906 ( 9%)        💩+ 18.8% ±  0.9%
  cache_misses       7.77   ± 12.8         0   …  556          466 ( 5%)        💩+ 17.4% ±  4.9%
  branch_misses      2.26K  ±  176       955   … 2.59K        1173 (12%)        💩+  8.0% ±  0.2%
```

