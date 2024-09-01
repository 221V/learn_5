
#import std/[math, strutils]
#[
import std/math


proc reverse_str(str: string): string =
  var str2: string = ""
  
  for n in str :
    str2 = n & str2
  result = str2


var hello: string = "hello"
var world: string = "world"
var passed: string = "Assertion passed!"

echo hello, " -> ", reverse_str(hello)
echo world, " -> ", reverse_str(world)
echo passed, " -> ", reverse_str(passed)

echo "done!"
]#


#import std/[math, algorithm]
import std/[math, unicode]

var hello: string = "hello"
var world: string = "world"
var passed: string = "Assertion passed!"

echo hello, " -> ", reversed(hello)
echo world, " -> ", world.reversed
echo passed, " -> ", passed.reversed

echo "done!"

