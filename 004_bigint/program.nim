
import strformat
import bigints


echo "Enter your number:"
var n = readLine(stdin).initBigInt
var s = $n
echo fmt"n = {s}"

n = n + 1.initBigInt
s = $n
echo fmt"n + 1 = {s}"

n = n * n
s = $n
echo fmt"(n + 1) ^ 2 = {s}"


# https://github.com/nim-lang/bigints
# bigints@1.0.0

