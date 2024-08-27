
import std/[math, strutils]

#[
iterator countup2*(a: float, b: float, step = 1.0): float {.inline.} =
  var res:float = a
  while res <= b:
    yield res
    res += step
]#

var
  #celsius: float
  fahr, celsius: float
  low, up, step: float

low = 0.0   # from 0
up = 300.0  # to 300
step = 20.0 # with step 20

echo "Fahrenheit   Celsius"

#for fahr in countup2(low, up, step):
while fahr <= up:
  celsius = (5.0 / 9.0) * (fahr - 32.0)
  echo fahr, "   ", celsius.formatFloat(ffDecimal, 1)
  fahr = fahr + step

echo "done!"

