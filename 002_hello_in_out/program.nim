
#import std/rdstdin
import std/strutils
import strformat

echo "Please type number from 1 to 5 and press enter:"
#var got_int = parseInt( readLine(stdin) )
let got_int = parseInt( readLine(stdin) )

#let doubled0 = got_int * 2
#let doubled = $doubled0 # $ -- "toString" operator

if (got_int > 0) and (got_int < 6) :
  let doubled = intToStr( got_int * 2 )
  
  #echo got_int, " * 2 = ", doubled # string concatenation
  
  echo fmt"{got_int} * 2 = {doubled}"
else:
  echo "Invalid number value!"

# https://narimiran.github.io/nim-basics/


