

import gmp;

//@safe pure nothrow @nogc:
//@nogc:
void main()
{
  import core.stdc.stdio : printf, scanf;
  import std.stdio : readln;
  import std.string : strip;
  import std : to, toStringz;
  
  alias Z = MpZ;
  //alias Z = CopyableMpZ;
  //alias MpZ = _Z!(false);
  
  //Z a;
  //Z b;
  
  //a = 42;
  //b = a.dup;
  
  printf("Enter your number:\n");
  string k = strip( readln() );
  
  Z n;
  n = Z(k);
  
  printf("n = %s\n", n.to!string.toStringz);
  
  n = n + 1;
  printf("n + 1 = %s\n", n.to!string.toStringz);
  
  n = n * n;
  printf("(n + 1) ^ 2 = %s\n", n.to!string.toStringz);
  
  
  //printf("%llu\n", Z.mersennePrime(15));
  //printf("%s\n", a.to!string.toStringz);
  //printf("%s\n", Z.mersennePrime(15).to!string.toStringz);
  
}

// dub add gmp-d
// dub build --force

// dub build --compiler ldc2 --build release --force
// "dflags": ["-w", "-O", "-static"],

// "dflags": ["--mtriple=ldc2", "-mtriple=x86_64-linux-gnu", "-w", "-O", "-static", "-of=program_d"],


// $ make c32
// $ make run3
// ./program_d
// 42
// 32767



