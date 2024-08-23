
import std/[strscans, parseutils]
#import std/strscans
#import std/parseutils



var
  f1: File
  f1name = "numbers.txt"
  line: string
  num1, num2, num3, med: uint16
  f2: File
  f2name = "result.txt"


proc uint16_s(input: string; myVal: var uint16; start: int): int =
  var val: uint
  let skip = parseUInt(input, val, start)
  if skip > 0:
    myVal = uint16(val)
    result = skip
    #return skip # the same
  #return 0 # default result


if open(f1, f1name) and open(f2, f2name, fmAppend): # fmWrite for (re)write mode, fmAppend for append
  while f1.readLine(line):
    echo line
    if scanf(line, "${uint16_s} ${uint16_s} ${uint16_s}", num1, num2, num3):
      if ((num1 < num2) and (num1 > num3) or
         (num1 > num2) and (num1 < num3)):
        med = num1
        
      elif ((num2 < num1) and (num2 > num3)) or
           ((num2 > num1) and (num2 < num3)):
        med = num2
        
      elif ((num3 < num1) and (num3 > num2)) or
           ((num3 > num1) and (num3 < num2)):
        med = num3
        
      else:
        med = 0
      
      echo med
      
      f2.writeLine(med)
      
  close(f1)
  close(f2)
  
else:
  echo "cannot read file!"

echo "done!"


# https://nim-lang.org/docs/strscans.html#user-definable-matchers
# https://nim-lang.org/docs/parseutils.html#parseUInt%2Cstring%2Cuint%2Cint
# https://nim-lang.org/docs/parseutils.html#parseBiggestUInt%2CopenArray%5Bchar%5D%2CBiggestUInt
# https://forum.nim-lang.org/t/6899
# https://narimiran.github.io/2021/01/11/nim-parsing.html
# https://peterme.net/handling-files-in-nim.html
# https://glenngillen.com/learning-nim/write-file/
# https://nim-lang.org/docs/syncio.html#FileMode
# https://nim-by-example.github.io/if_else_while/


