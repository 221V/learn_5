

import gmp;

//@safe pure nothrow @nogc:
//@nogc:
void main()
{
  import core.stdc.stdio : printf;
  import std.conv : to;
  import std.string : toStringz;
  
  alias Z = MpZ;
  //alias Z = CopyableMpZ;
  //alias MpZ = _Z!(false);
  
  //Z a;
  //Z b;
  
  //a = 42;
  //b = a.dup;
  
  Z num = 0;
  
  //for(ulong i = 1; i < 4_000_001; i++){
  //  num += i;
  //}
  
  foreach(i; 1 .. 4_000_001){
    num += i;
  }
  
  printf("SUM(1, 4_000_000) = %s\n", num.to!string.toStringz);
  
  
  num = 1;
  
  //for(ubyte j = 1; j < 101; j++){
  //  num *= j;
  //}
  
  foreach(j; 1 .. 101){
    num *= j;
  }
  
  printf("PRODUCT(1, 100) = %s\n", num.to!string.toStringz);
  
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


