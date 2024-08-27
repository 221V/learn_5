
#include <stdio.h>

int main(void) {
  // fahr is 0, 20, ... 300
  
  float fahr, celsius;
  int low, up, step;
  
  low = 0;   // from 0
  up = 300;  // to 300
  step = 20; // with step 20
  
  printf("Fahrenheit   Celsius\n");
  
  for(fahr = low; fahr <= up; fahr = fahr + step){
    celsius = (5.0 / 9.0) * (fahr - 32.0);
    
    printf("%3.0f   %6.1f\n", fahr, celsius);
  }
  
  printf("done!\n");
  
  return 0;
}


