

extern(C) void main()
{
  import core.stdc.stdio : printf, scanf;
  
  int got_int;
  
  printf("Please type number from 1 to 5 and press enter:\n");
  
  // todo use other funcs for read only int (no hidden float to int) https://stackoverflow.com/questions/26583717/how-to-scanf-only-integer
  if( (scanf("%d", &got_int) == 1) &&
      (got_int > 0) && (got_int < 6) ){
    int doubled_int = got_int * 2;
    printf("%d * 2 = %d\n", got_int, doubled_int);
  
  }else{
    printf("Invalid number value!\n");
    
  }
}

// https://dlang.org/library/core/stdc/stdio.html
// https://dlang.org/library/core/stdc/stdio/scanf.html


