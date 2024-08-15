
#include <stdio.h>

int main(void) {
  unsigned short int sum = 0;
  unsigned char num;
  
  printf("Sum numbers 1-100:\n");
  
  for(num = 1; num < 101; num++){
    sum = sum + num;
  }
  printf("%d\n", sum);
  
  
  unsigned long long prod = 1;
  unsigned char num2;
  printf("Product numbers 1-15:\n");
  for(num2 = 1; num2 < 16; num2++){
    prod = prod * num2;
  }
  printf("%llu\n", prod);
  
  
}

// https://intellipaat.com/blog/tutorial/c-tutorial/c-data-types/
// https://metanit.com/c/tutorial/2.3.php
// https://www.w3schools.com/c/c_data_types.php
// https://www.cs.yale.edu/homes/aspnes/pinewiki/C(2f)IntegerTypes.html
// https://www.w3schools.com/c/c_for_loop.php

