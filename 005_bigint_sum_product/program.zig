
const std = @import("std");

pub fn main() !void{
  //var num: u64 = 0;
  var num: u600 = 0;
  for(0..4000001) |i|{
    num += i;
  }
  
  std.debug.print("SUM(1, 4_000_000) = {d}\n", .{num});
  
  var num2: u600 = 1;
  for(2..100) |i|{
    num2 *= i;
  }
  
  std.debug.print("PRODUCT(1, 100) = {d}\n", .{num2});
}

