
const std = @import("std");
const print = std.debug.print;

pub fn main() !void{
  var sum: u16 = 0;
  for(1..101) |i|{
    sum += @intCast(i);
  }
  
  print("Sum numbers 1-100:\n{d}\n", .{sum});
  
  var prod: u64 = 1;
  for(1..16) |i|{
    prod *= i;
  }
  print("Product numbers 1-15:\n{d}\n", .{prod});
}

