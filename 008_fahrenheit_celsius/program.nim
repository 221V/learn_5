
import std/math

var
  #fahr, celsius: int # program.nim(4, 3) Hint: 'fahr' is declared but not used [XDeclaredButNotUsed]
  celsius: int
  low, up, step: int

low = 0   # from 0
up = 300  # to 300
step = 20 # with step 20

echo "Fahrenheit\tCelsius"

for fahr in countup(low, up, step):
  #celsius = toInt( 5 * (fahr - 32) / 9 )
  celsius = toInt( trunc( 5 * (fahr - 32) / 9 ))
  echo fahr, "\t", celsius

echo "done!"

