
import bigints

var num = 0.initBigInt

for i in 1'u64 .. 4_000_000'u64 : # sum 4_000_000 numbers
  num = num + i.initBigInt

echo "SUM(1, 4_000_000) = ", num


num = 1.initBigInt

for i in 1'u8 .. 100'u8 : # product 100 numbers (factorial 100)
  num = num * i.initBigInt

echo "PRODUCT(1, 100) = ", num


# https://github.com/nim-lang/bigints
# bigints@1.0.0

