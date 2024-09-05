
import std.stdio : writeln;

void main()
{
  writeln("Signed - Type, Length in bytes, Minimum value, Maximum value, Initial value:");
  
  
  writeln(byte.stringof, " : ", byte.sizeof, " byte, ", byte.min, " — ", byte.max, " , ", byte.init);
  writeln(short.stringof, " : ", short.sizeof, " bytes, ", short.min, " — ", short.max, " , ", short.init);
  writeln(int.stringof, " : ", int.sizeof, " bytes, ", int.min, " — ", int.max, " , ", int.init);
  writeln(long.stringof, " : ", long.sizeof, " bytes, ", long.min, " — ", long.max, " , ", long.init, "\n");
  
  writeln("Unsigned - Type, Length in bytes, Minimum value, Maximum value, Initial value:");
  
  writeln(ubyte.stringof, " : ", ubyte.sizeof, " byte, ", ubyte.min, " — ", ubyte.max, " , ", ubyte.init);
  writeln(ushort.stringof, " : ", ushort.sizeof, " bytes, ", ushort.min, " — ", ushort.max, " , ", ushort.init);
  writeln(uint.stringof, " : ", uint.sizeof, " bytes, ", uint.min, " — ", uint.max, " , ", uint.init);
  writeln(ulong.stringof, " : ", ulong.sizeof, " bytes, ", ulong.min, " — ", ulong.max, " , ", ulong.init, "\n");
  
  writeln(float.stringof, " : ", float.sizeof, " bytes, ", float.max, " , ", float.init); // Error: no property `min` for type `float`, perhaps `import std.algorithm;` is needed?
  writeln(double.stringof, " : ", double.sizeof, " bytes, ", double.max, " , ", double.init); // Error: no property `min` for type `double`, perhaps `import std.algorithm;` is needed?
  writeln(real.stringof, " : ", real.sizeof, " bytes, ", real.max, " , ", real.init, "\n"); // Error: no property `min` for type `real`, perhaps `import std.algorithm;` is needed?
  
  
  writeln("String's Chars - Type, Length in bytes, Minimum value, Maximum value, Initial value:");
  
  writeln(char.stringof, " : ", char.sizeof, " byte, unsigned 8 bit (UTF-8 code unit), Initial value: '\xFF'"); // char.min, " — ", char.max, " , ", char.init);
  writeln(wchar.stringof, " : ", wchar.sizeof, " bytes, unsigned 16 bit (UTF-16 code unit), Initial value: '\uFFFF'"); // wchar.min, " — ", wchar.max, " , ", wchar.init);
  writeln(dchar.stringof, " : ", dchar.sizeof, " bytes, unsigned 32 bit (UTF-32 code unit), Initial value: '\U0000FFFF'", "\n"); // dchar.min, " — ", dchar.max, " , ", dchar.init);
  
  
  writeln("Bool type:");
  
  writeln(bool.stringof, " : ", bool.sizeof, " byte, ", bool.min, " — ", bool.max, " , ", bool.init, "\n");
  
  
  writeln("Type, Length in bytes, Minimum value, Maximum value, Initial value:");
  
  // other
  
  //writeln(cent.stringof, " : ", cent.sizeof, " bytes, ", cent.min, " — ", cent.max, " , ", cent.init); // Error: `cent` and `ucent` types are obsolete, use `core.int128.Cent` instead
  //writeln(ucent.stringof, " : ", ucent.sizeof, " bytes, ", ucent.min, " — ", ucent.max, " , ", ucent.init); // Error: `cent` and `ucent` types are obsolete, use `core.int128.Cent` instead
  
  //writeln(ifloat.stringof, " : ", ifloat.sizeof, " bytes, ", ifloat.min, " — ", ifloat.max, " , ", ifloat.init); // Deprecation: use of imaginary type `ifloat` is deprecated, use `float` instead
  //writeln(idouble.stringof, " : ", idouble.sizeof, " bytes, ", idouble.min, " — ", idouble.max, " , ", idouble.init); // Deprecation: use of imaginary type `idouble` is deprecated, use `double` instead
  //writeln(ireal.stringof, " : ", ireal.sizeof, " bytes, ", ireal.min, " — ", ireal.max, " , ", ireal.init); // Deprecation: use of imaginary type `ireal` is deprecated, use `real` instead
  //writeln(cfloat.stringof, " : ", cfloat.sizeof, " bytes, ", cfloat.min, " — ", cfloat.max, " , ", cfloat.init); // Deprecation: use of complex type `cfloat` is deprecated, use `std.complex.Complex!(float)` instead
  //writeln(cdouble.stringof, " : ", cdouble.sizeof, " bytes, ", cdouble.min, " — ", cdouble.max, " , ", cdouble.init); // Deprecation: use of complex type `cdouble` is deprecated, use `std.complex.Complex!(double)` instead
  //writeln(creal.stringof, " : ", creal.sizeof, " bytes, ", creal.min, " — ", creal.max, " , ", creal.init); // Deprecation: use of complex type `creal` is deprecated, use `std.complex.Complex!(real)` instead
  
  // todo add more types examples
}

// https://tour.dlang.org/tour/en/basics/basic-types
// https://dlang.org/spec/type.html
// https://ddili.org/ders/d.en/types.html

