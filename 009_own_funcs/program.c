
#include <stdio.h>


//int pow2(long long m, long long n);

int pow2(long long base, long long n){
  long long i, p;
  p = 1;
  
  for(i = 1; i <= n; i++){
    p = p * base;
  }
  return p;
}


int main(void) {
  long long i;
  
  for(i = 0; i <= 10; i++){
    printf("%lld:\n%d\n%d\n%d\n%d\n%d\n%d\n---\n", i,
      pow2(2, i), pow2(-3, i),
      pow2(3, i), pow2(4, i),
      pow2(-4, i), pow2(5, i) );
  }
  
  printf("done!\n");
  
  return 0;
}


