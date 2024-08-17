
#include <stdio.h>
#include <stdlib.h>
#include <gmp.h>

int main(void) {
  mpz_t num;
  unsigned long int i;

  mpz_init(num);
  mpz_set_ui(num, 0);

  for(i = 1; i < 4000001; i++){ // sum 4_000_000 numbers
    mpz_add_ui(num, num, i);
  }

  printf("SUM(1, 4_000_000) = ");
  mpz_out_str(stdout, 10, num);
  printf("\n");


  mpz_set_ui(num, 1);
  for(i = 2; i < 101; i++){ // product 100 numbers (factorial 100)
    mpz_mul_ui(num, num, i);
  }

  printf("PRODUCT(1, 100) = ");
  mpz_out_str(stdout, 10, num);
  printf("\n");

  mpz_clear(num);
}

// https://gmplib.org/    v 6.3.0
// https://gmplib.org/manual/Installing-GMP
// https://home.cs.colorado.edu/~srirams/courses/csci2824-spr14/gmpTutorial.html
// https://gmplib.org/manual/Assigning-Integers
// https://gmplib.org/manual/Integer-Arithmetic
