
#include <stdio.h>

int main(void) {
  // fahr is 0, 20, ... 300
  
  int fahr, celsius;
  int low, up, step;
  
  low = 0;   // from 0
  up = 300;  // to 300
  step = 20; // with step 20
  
  printf("Fahrenheit\tCelsius\n");
  
  for(fahr = low; fahr <= up; fahr = fahr + step){
    celsius = 5 * (fahr - 32) / 9;
    
    printf("%d\t%d\n", fahr, celsius);
  }
  
  printf("done!\n");
  
  return 0;
}


