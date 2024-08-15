
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <gmp.h>
//#include <limits.h>

/*
int fact(int n){
  // Function: fact (n)
  // Returns: n!

  int i;
  int p = 1;

  for (i = 1; i <= n ; ++i){
    p = p * i;
  }
  return p;
}

int main(int argc, char * argv[]) {
  
  int n;

  if (argc <= 1){
    // Check if user has a command line argument // ./program_c 15 // ./program_c 16 // ./program_c 17
    printf ("Usage: %s <number>", argv[0]);
    return 2;
  }

  n = atoi(argv[1]); // Extract the command line argument

  assert( n >= 0);

  // Print the factorial
  printf ("%d ! = %d \n", n, fact(n));

  return 1;
  */
  /*
  int k,x,i;

  // 1. Print the machine native int size and the max/min integer
  printf ("Size of integers in this computer = %ld bits \n", sizeof(int) * 8);
  printf ("The largest int representable is %d \n", INT_MAX);
  printf ("The smallest int representable is %d \n", INT_MIN);

  // 2. Let us add 1 to INT_MAX
  k = INT_MAX;

  printf ("%d + 1 = %d\n", k,k+1);

  // 3. Input a number x and print its binary representation out

  printf ("Enter x:\n");
  if( scanf("%d", &x) != 1 ){ printf ("Invalid number!\n"); return 0; }
  printf ("The binary reprentation LSB --> MSB is: ");
  for (i = 0; i < 8 * sizeof(int); ++i){
    if (x % 2 == 0)
      printf("0");
    else
      printf("1");
    x = x >> 1; // Shift right by 1
  }
  printf("\n");
}
*/

int main(void) {
  char inputStr[1024];
  // mpz_t is the type defined for GMP integers.
  // It is a pointer to the internals of the GMP integer data structure
  
  mpz_t n;
  int flag;

  printf ("Enter your number:\n");
  if( scanf("%1023s" , inputStr)  != 1 ){ printf ("Invalid number!\n"); return 0; }
  // NOTE: never every write a call scanf ("%s", inputStr);
  //       You are leaving a security hole in your code.
  
  // 1. Initialize the number
  mpz_init(n);
  mpz_set_ui(n,0);

  // 2. Parse the input string as a base 10 number
  flag = mpz_set_str(n,inputStr, 10);
  assert (flag == 0); // If flag is not 0 then the operation failed

  // Print n
  printf ("n = ");
  mpz_out_str(stdout, 10, n);
  printf ("\n");

  // 3. Add one to the number
  mpz_add_ui(n, n, 1); // n = n + 1

  // 4. Print the result
  printf ("n + 1 = ");
  mpz_out_str(stdout, 10, n);
  printf ("\n");

  // 5. Square n + 1
  mpz_mul(n, n, n); // n = n * n

  printf ("(n + 1) ^ 2 = ");
  mpz_out_str(stdout, 10, n);
  printf ("\n");

  // 6. Clean up the mpz_t handles or else we will leak memory
  mpz_clear(n);
}

// https://gmplib.org/    v 6.3.0
// https://gmplib.org/manual/Installing-GMP
// https://home.cs.colorado.edu/~srirams/courses/csci2824-spr14/gmpTutorial.html

