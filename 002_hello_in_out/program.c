
#include <stdio.h>

int main(void) {
  int got_int;
  
  printf("Please type number from 1 to 5 and press enter:\n");
  //scanf("%d", &got_int); // warning: ignoring return value of ‘scanf’ declared with attribute ‘warn_unused_result’ [-Wunused-result]
  (void)!scanf("%d", &got_int);
  
  if((got_int > 0) && (got_int < 6)){
    int doubled_int = got_int * 2;
    printf("%d * 2 = %d\n", got_int, doubled_int);
    
  }else{
    printf("Invalid number value!\n");
    
  }
}

// https://www.freecodecamp.org/news/using-scanf-in-c/
// https://www.freecodecamp.org/news/c-operator-logic-operators-in-c-programming/

