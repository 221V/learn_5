
import std.bigint;
import std.stdio : writefln;

void main(){
  BigInt num = 0;
  
  for(ulong i = 1; i < 4_000_001; i++){
    num = num + BigInt(i);
  }
  
  writefln("SUM(1, 4_000_000) = %s", num);
  
  num = 1;
  for(ubyte j = 1; j < 101; j++){
    num = num * BigInt(j);
  }
  
  writefln("PRODUCT(1, 100) = %s", num);
  
}


