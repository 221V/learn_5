
/*
// this returns error with --betterC
// https://pastebin.com/8U0peFUw
// https://dlang.org/spec/betterc.html

import std.stdio;


void main()
{
  writeln("Hello World!");
}
*/

extern(C) void main()
{
  import core.stdc.stdio : printf;
  printf("Hello World!\n");
}

