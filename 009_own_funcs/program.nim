
#import std/[math, strutils]
import std/math


proc pow2(base: int64, n: int64): int64 =
  var p: int64 = 1
  
  for i in 1'i64 .. n :
    p = p * base
  result = p


for i in 0'i64 .. 10 :
  echo i, ":"
  echo pow2(2, i)
  echo pow2(-3, i)
  echo pow2(3, i)
  echo pow2(4, i)
  echo pow2(-4, i)
  echo pow2(5, i)
  echo "---"

echo "done!"

