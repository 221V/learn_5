
extern(C) void main()
{
  import core.stdc.stdio : printf;
  
  int sum = 0;
  int num;
  
  printf("Sum numbers 1-100:\n");
  
  for(num = 1; num < 101; num++){
    sum = sum + num;
  }
  printf("%d\n", sum);
  
  ulong prod = 1;
  ulong num2;
  printf("Product numbers 1-15:\n");
  for(num2 = 1; num2 < 16; num2++){
    prod = prod * num2;
  }
  printf("%llu\n", prod);
  
}

