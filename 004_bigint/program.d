
/*
import std.bigint;
import std.stdio : writefln;

BigInt bigPow(BigInt x, int n) {
  BigInt answer = 1;
  for (auto i = 0; i < n; i++) {
    answer *= x;
  }
  return answer;
}
  
void main() {
  writefln("2^1000: %s", bigPow(cast(BigInt)2, 1000));
}
// $ ldc2 -mtriple=x86_64-linux-gnu -w -O -static -of=program_d program.d
// 2^1000: 10715086071862673209484250490600018105614048117055336074437503883703510511249361224931983788156958581275946729175531468251871452856923140435984577574698574803934567774824230985421074605062371141877954182153046474983581941267398767559165543946077062914571196477686542167660429831652624386837205668069376
*/


/*
import std.bigint;
import core.stdc.stdio : printf, scanf;
import std.stdio : writefln, readln;
import std.string : strip;

void main() {
  printf("Enter your number:\n");
  string k = strip( readln() );
  BigInt n = BigInt(k);
  
  writefln("bigint num * 2: %s", n * 2);
}
// $ ldc2 -mtriple=x86_64-linux-gnu -w -O -static -of=program_d program.d
// $ make run3
// ./program_d
// Enter your number:
// 77777777777777777777777777777777777777777777777777777777777777777777777777777
// bigint num * 2: 155555555555555555555555555555555555555555555555555555555555555555555555555554
*/


import std.bigint;
import core.stdc.stdio : printf, scanf;
import std.stdio : writefln, readln;
import std.string : strip;

void main() {
  printf("Enter your number:\n");
  string k = strip( readln() );
  BigInt n = BigInt(k);
  
  writefln("n = %s", n);
  
  n += 1; // n = n + 1;
  writefln("n + 1 = %s", n);
  
  n *= n; // n = n * n;
  writefln("(n + 1) ^ 2 = %s", n);
}


