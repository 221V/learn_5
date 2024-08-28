
#include <stdio.h>
#include <string.h>
#include <assert.h>

void reverse_str(char* str){
  int next = 0;
  int last = strlen(str) - 1;
  char tmp;
  
  while(next < last){
    tmp = str[next];
    str[next] = str[last];
    str[last] = tmp;
    next++;
    last--;
  }
}

int main(void) {
  char hello[] = "hello";
  char world[] = "world";
  char passed[] = "Assertion passed!";
  
  printf("%s -> ", hello);
  reverse_str(hello);
  printf("%s\n", hello);
  
  assert( ! strcmp(hello, "olleh") );
  //assert( strcmp(hello, "olleh") == 0 );
  
  printf("%s -> ", world);
  reverse_str(world);
  printf("%s\n", world);
  
  assert( ! strcmp(world, "dlrow") );
  
  printf("%s -> ", passed);
  reverse_str(passed);
  printf("%s\n", passed);
  
  assert( ! strcmp(passed, "!dessap noitressA") );
  
  printf("done!\n");
  
  return 0;
}


