
#import strformat


echo "MIN — MAX types values:\n"
echo "int8 : ", low(int8), " — ", high(int8)
echo "int16 : ", low(int16), " — ", high(int16)
echo "int32 : ", low(int32), " — ", high(int32)
echo "int64 : ", low(int64), " — ", high(int64), "\n"
echo "uint8 : ", low(uint8), " — ", high(uint8)
echo "uint16 : ", low(uint16), " — ", high(uint16)
echo "uint32 : ", low(uint32), " — ", high(uint32)
echo "uint64 : ", low(uint64), " — ", high(uint64), "\n"


#[ this is multile comment
var num1: int8 = 0
echo "int8: -129 = ", (num1 - 128 - 1), "; 128 = ", (num1 + 127 + 1)
# will got runtime error for signed integers
# fatal.nim(53)            sysFatal
# Error: unhandled exception: over- or underflow [OverflowDefect]
]#

# unsigned integers has overflow
echo "\noverflow (unsigned only -- with signed got runtime error):"
var num_1: uint8 = 0
echo "uint8: -1 = ", (num_1 - 1), "; 256 = ", (num_1 + 255 + 1)

var num_2: uint16 = 0
echo "uint16: -1 = ", (num_2 - 1), "; 65536 = ", (num_2 + 65535 + 1)

var num_3: uint32 = 0
echo "uint32: -1 = ", (num_3 - 1), "; 4294967296 = ", (num_3 + 4294967295'u32 + 1'u32)

var num_4: uint64 = 0
echo "uint64: -1 = ", (num_4 - 1), "; 18446744073709551616 = ", (num_4 + 18446744073709551614'u64 + 2'u64)


# todo add more types examples



# https://nim-lang.org/docs/system.html#int-max_1
# https://nim-lang.org/docs/system.html#int-min_1
# https://forum.nim-lang.org/t/12297


