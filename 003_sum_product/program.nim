
#import strformat

# #[ this was multile comment
var sum: int
echo "Sum numbers 1-100:"

for num in 1 .. 100 :
  sum = sum + num

echo sum
# ]#

var prod: int64 = 1
echo "Product numbers 1-15:"

for num2 in 1'i64 .. 15'i64 :
  prod = prod * num2

echo prod


