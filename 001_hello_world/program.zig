
const std = @import("std");
const print = std.debug.print;

pub fn main() void{
  //std.debug.print("Hello, {s}!\n", .{"World"});
  std.debug.print("Hello, World!\n", .{});
  print("Hello, {s}!\n", .{"World"});
}

