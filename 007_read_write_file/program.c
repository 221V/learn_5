
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>




int main(void) {
  FILE *f1ptr;
  FILE *f2ptr;
  
  f1ptr = fopen("numbers.txt", "r"); // open file in read mode
  f2ptr = fopen("result.txt", "a"); // open file in write-append mode // "w" for (re)write mode, "a" for append
  
  char myString[100]; // store readed line
  uint16_t num1;
  uint16_t num2;
  uint16_t num3;
  uint16_t med;
  
  // reaf and process line by line
  while( fgets(myString, 100, f1ptr) ){
    sscanf(myString, "%hu %hu %hu\n", &num1, &num2, &num3);
    printf("%s", myString);
    //printf("%u\n", num1);
    //printf("%u\n", num2);
    //printf("%u\n", num3);
    
    if(((num1 < num2) && (num1 > num3)) ||
       ((num1 > num2) && (num1 < num3))){
        med = num1;
        
    }else if(((num2 < num1) && (num2 > num3)) ||
            ((num2 > num1) && (num2 < num3))){
      med = num2;
      
    }else if(((num3 < num1) && (num3 > num2)) ||
            ((num3 > num1) && (num3 < num2))){
      med = num3;
      
    }else{
      med = 0;
    }
    
    printf("%u\n", med);
    
    fprintf(f2ptr, "%u\n", med); // write median number to line to file
  }
  
  fclose(f1ptr); // close file
  fclose(f2ptr); // close file
  
  printf("done!\n");
  
  return 0;
}


