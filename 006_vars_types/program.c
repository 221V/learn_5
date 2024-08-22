
#include <stdio.h>
//#include <stdint.h> // int8_t, int16_t, int32_t, int64_t ; uint8_t, uint16_t, uint32_t, uint64_t

#define NUMBER1 1

int main(void) {
  printf("macro defined number = %d\n", NUMBER1);
  
  // todo add more types examples
  
  printf("\nsizeof(char) = %ld byte\n", sizeof(char)); // bit(s) = 8 * byte(s)
  printf("sizeof(short) = %ld bytes\n", sizeof(short));
  printf("sizeof(long) = %ld bytes (must be 4 bytes)\n", sizeof(long));
  printf("sizeof(long long) = %ld bytes\n", sizeof(long long));
  
  printf("\nsizeof(unsigned char) = %ld byte\n", sizeof(unsigned char));
  printf("sizeof(unsigned short) = %ld bytes\n", sizeof(unsigned short));
  printf("sizeof(unsigned long) = %ld bytes (must be 4 bytes)\n", sizeof(unsigned long));
  printf("sizeof(unsigned long long) = %ld bytes\n", sizeof(unsigned long long));
  
  printf("\noverflow:\n");
  
  // signed
  char num1 = 0;
  char tmp1 = 0;
  printf("char (signed) : ");
  tmp1 = num1 - 128 - 1;
  printf("-129 = %d; ", tmp1);
  tmp1 = num1 + 127 + 1;
  printf("128 = %d\n", tmp1);
  
  short num2 = 0;
  short tmp2 = 0;
  printf("short (signed) : ");
  tmp2 = num2 - 32768 - 1;
  printf("-32769 = %d; ", tmp2);
  tmp2 = num2 + 32767 + 1;
  printf("32768 = %d\n", tmp2);
  
  long num3 = 0;
  long tmp3 = 0;
  printf("long (signed) : ");
  tmp3 = num3 - 2147483648 - 1;
  printf("-2147483649 = %ld; ", tmp3);
  tmp3 = num3 + 2147483647 + 1;
  printf("2147483648 = %ld\n", tmp3);
  
  
  long long num4 = 0;
  long long tmp4 = 0;
  printf("long long (signed) : ");
  tmp4 = num4 - 9223372036854775807 - 2;
  printf("-9223372036854775809 = %lld; ", tmp4);
  tmp4 = num4 + 9223372036854775807 + 1;
  printf("9223372036854775808 = %lld\n", tmp4);
  
  // unsigned
  unsigned char num_1 = 0;
  unsigned char tmp_1 = 0;
  printf("\nchar (unsigned) : ");
  tmp_1 = num_1 - 1;
  printf("-1 = %u; ", tmp_1);
  tmp_1 = num_1 + 255 + 1;
  printf("256 = %u\n", tmp_1);
  
  unsigned short num_2 = 0;
  unsigned short tmp_2 = 0;
  printf("short (unsigned) : ");
  tmp_2 = num_2 - 1;
  printf("-1 = %u; ", tmp_2);
  tmp_2 = num_2 + 65535 + 1;
  printf("65536 = %u\n", tmp_2);
  
  unsigned long num_3 = 0;
  unsigned long tmp_3 = 0;
  printf("long (unsigned) : ");
  tmp_3 = num_3 - 1;
  printf("-1 = %lu; ", tmp_3);
  tmp_3 = num_3 + 4294967295 + 1;
  printf("4294967296 = %lu\n", tmp_3);
  
  
  unsigned long long num_4 = 0;
  unsigned long long tmp_4 = 0;
  printf("long long (unsigned) : ");
  tmp_4 = num_4 - 1;
  printf("-1 = %llu; ", tmp_4);
  tmp_4 = num_4 + 9223372036854775807 + 9223372036854775807 + 2;
  printf("18446744073709551616 = %llu\n", tmp_4);
  
  printf("\nranges:\n");
  printf("char (signed) = %d — %d\n", (num1 - 128), (num1 + 127) ); // -128 — 127
  printf("short (signed) = %d — %d\n", (num2 - 32768), (num2 + 32767) ); // -32768 — 32767
  printf("long (signed) = %ld — %ld\n", (num3 - 2147483648), (num3 + 2147483647) ); // -2147483648 — 2147483647
  printf("long long (signed) = %lld — %lld\n", (num4 - 9223372036854775807 - 1), (num4 + 9223372036854775807) ); // -9223372036854775808 — 9223372036854775807
  
  printf("\nchar (unsigned) = 0 — %u\n", (num1 + 255) ); // 0 — 255
  printf("short (unsigned) = 0 — %u\n", (num2 + 65535) ); // 0 — 65535
  printf("long (unsigned) = 0 — %lu\n", (num3 + 4294967295) ); // 0 — 4294967295
  printf("long long (unsigned) = 0 — %llu\n", (num4 + 9223372036854775807 + 9223372036854775807 + 1) ); // 0 — 18446744073709551615
  
}

// https://intellipaat.com/blog/tutorial/c-tutorial/c-data-types/
// https://metanit.com/c/tutorial/2.3.php
// https://www.w3schools.com/c/c_data_types.php
// https://www.cs.yale.edu/homes/aspnes/pinewiki/C(2f)IntegerTypes.html
// https://www.geeksforgeeks.org/macros-and-its-types-in-c-cpp/
// https://www.cs.yale.edu/homes/aspnes/classes/223/notes.html // 4 The C programming language


