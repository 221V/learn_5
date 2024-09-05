# variables && types


### integer types ranges
```
UNSIGNED MAX = 2 ** bits - 1  
SIGNED MAX = 2 ** (bits - 1) - 1  
```
| bits | C lang | D lang | Nim | from | to |
| --- | --- | --- | --- | --- | --- |
| 8 | char <br> int8_t | byte <br> char | int8 | -128 | 127 |
| 16 | short <br> int16_t | short | int16 | -32768 | 32767 |
| 32 | int <br> long <br> int32_t | int | int32 | -2147483648 | 2147483647 |
| 64 | long long <br> int64_t | long | int64 | -9223372036854775808 | 9223372036854775807 |
| <b>bits</b> | <b>C lang</b> | <b>D lang</b> | <b>Nim</b> | <b>from</b> | <b>to</b> |
| 8 | unsigned char <br> uint8_t | ubyte | uint8 | 0 | 255 |
| 16 | unsigned short <br> uint16_t | ushort | uint16 | 0 | 65535 |
| 32 | unsigned int <br> unsigned long <br> uint32_t | uint | uint32 | 0 | 4294967295 |
| 64 | unsigned long long <br> uint64_t | ulong | uint64 | 0 | 18446744073709551615 |
| 128 | - | - | - | 0 | 340282366920938463463374607431768211455 |

```
$ make run1
./program_c
macro defined number = 1

sizeof(char) = 1 byte
sizeof(short) = 2 bytes
sizeof(long) = 8 bytes (must be 4 bytes)
sizeof(long long) = 8 bytes

sizeof(unsigned char) = 1 byte
sizeof(unsigned short) = 2 bytes
sizeof(unsigned long) = 8 bytes (must be 4 bytes)
sizeof(unsigned long long) = 8 bytes

overflow:
char (signed) : -129 = 127; 128 = -128
short (signed) : -32769 = 32767; 32768 = -32768
long (signed) : -2147483649 = -2147483649; 2147483648 = 2147483648
long long (signed) : -9223372036854775809 = 9223372036854775807; 9223372036854775808 = -9223372036854775808

char (unsigned) : -1 = 255; 256 = 0
short (unsigned) : -1 = 65535; 65536 = 0
long (unsigned) : -1 = 18446744073709551615; 4294967296 = 4294967296
long long (unsigned) : -1 = 18446744073709551615; 18446744073709551616 = 0

ranges:
char (signed) = -128 — 127
short (signed) = -32768 — 32767
long (signed) = -2147483648 — 2147483647
long long (signed) = -9223372036854775808 — 9223372036854775807

char (unsigned) = 0 — 255
short (unsigned) = 0 — 65535
long (unsigned) = 0 — 4294967295
long long (unsigned) = 0 — 18446744073709551615



$ make run2
./program_nim
MIN — MAX types values:

int8 : -128 — 127
int16 : -32768 — 32767
int32 : -2147483648 — 2147483647
int64 : -9223372036854775808 — 9223372036854775807

uint8 : 0 — 255
uint16 : 0 — 65535
uint32 : 0 — 4294967295
uint64 : 0 — 18446744073709551615


overflow (unsigned only -- with signed got runtime error):
uint8: -1 = 255; 256 = 0
uint16: -1 = 65535; 65536 = 0
uint32: -1 = 4294967295; 4294967296 = 0
uint64: -1 = 18446744073709551615; 18446744073709551616 = 0



$ make c30
$ make run3
./program_d
Signed - Type, Length in bytes, Minimum value, Maximum value, Initial value:
byte : 1 byte, -128 — 127 , 0
short : 2 bytes, -32768 — 32767 , 0
int : 4 bytes, -2147483648 — 2147483647 , 0
long : 8 bytes, -9223372036854775808 — 9223372036854775807 , 0

Unsigned - Type, Length in bytes, Minimum value, Maximum value, Initial value:
ubyte : 1 byte, 0 — 255 , 0
ushort : 2 bytes, 0 — 65535 , 0
uint : 4 bytes, 0 — 4294967295 , 0
ulong : 8 bytes, 0 — 18446744073709551615 , 0

float : 4 bytes, 3.40282e+38 , nan
double : 8 bytes, 1.79769e+308 , nan
real : 16 bytes, 1.18973e+4932 , nan

String's Chars - Type, Length in bytes, Minimum value, Maximum value, Initial value:
char : 1 bytes, unsigned 8 bit (UTF-8 code unit), Initial value: '�' // '\xFF'
wchar : 2 byte, unsigned 16 bit (UTF-16 code unit), Initial value: '￿' // '\uFFFF'
dchar : 4 bytes, unsigned 32 bit (UTF-32 code unit), Initial value: '￿' // '\U0000FFFF'

Bool type:
bool : 1 byte, false — true , false

Type, Length in bytes, Minimum value, Maximum value, Initial value:
```
