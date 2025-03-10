
import std.stdio : write, writeln, File;
import std.file;
import std.format.read : formattedRead;


void main(){
  File file1 = File("numbers.txt", "r"); // open file in read mode
  File file2 = File("result.txt", "a"); // open file in write-append mode // "w" for (re)write mode, "a" for append
  
  ushort num1; // uint16
  ushort num2; // uint16
  ushort num3; // uint16
  ushort med; // uint16
  
  foreach(line; file1.byLine){ // read file line by line
    //string lineStr = line.idup; // line has type char[] so lets convert to string
    //writeln(lineStr);
    formattedRead( line.idup, "%u %u %u", num1, num2, num3 );
    write(num1, " ", num2, " ", num3, "\n");
    
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
    
    write(med, "\n");
    file2.writeln(med);
  }
  
  file1.close();
  file2.close();
  
  write("done!\n");
  
  /*
  string content = readText("numbers.txt"); // also we can read file as string
  string[] lines = content.splitLines();
  
  foreach(line; lines){
    writeln(line);
  }
  */
  
}

// https://dlang.org/phobos/std_format_read.html
// https://dlang.org/library/std/stdio/file.readf.html
// https://dlang.org/library/std/stdio/readf.html


// make c30
// todo rewrite for use -betterC and compile with make c3
