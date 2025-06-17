

import gmp;

import core.stdc.stdio : printf;
import core.stdc.stdlib : malloc, free;

extern(C) @nogc void __gmpz_init_set_str(gmp.MpZ* rop, const char* str, int base);
extern(C) @nogc char* __gmpz_get_str(char* buf, int base, const(gmp.MpZ)* num);
extern(C) @nogc size_t __gmpz_sizeinbase(const(gmp.MpZ)* num, int base);

//@safe pure nothrow @nogc:
@nogc:
extern(C) void main()
{
  //alias Z = MpZ;
  alias Z = gmp.MpZ;
  //alias Z = CopyableMpZ;
  
  Z num = 0;
  
  //for(ulong i = 1; i < 4_000_001; i++){
  //  num += i;
  //}
  
  foreach(i; 1 .. 4_000_001){
    num += i;
  }
  
  size_t size = __gmpz_sizeinbase(&num, 10) + 2; // +2 for sign and '\0'
  char* buffer = cast(char*)malloc(size);
  __gmpz_get_str(buffer, 10, &num); // to string
  
  printf("SUM(1, 4_000_000) = %s\n", buffer);
  free(buffer);
  
  
  
  int base = 10;
  const char* str1 = "1";
  __gmpz_init_set_str(&num, str1, base);
  
  //for(ubyte j = 1; j < 101; j++){
  //  num *= j;
  //}
  
  foreach(j; 1 .. 101){
    num *= j;
  }
  
  size = __gmpz_sizeinbase(&num, 10) + 2;
  buffer = cast(char*)malloc(size);
  __gmpz_get_str(buffer, 10, &num);
  
  printf("PRODUCT(1, 100) = %s\n", buffer);
  free(buffer);
}

// dub build --compiler ldc2 --build release --force
// "dflags": ["-w", "-O", "-static"],

// "dflags": ["--mtriple=ldc2", "-mtriple=x86_64-linux-gnu", "-w", "-O", "-static", "-of=program_d"],


// $ make c32
// $ make run3

