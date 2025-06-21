
const std = @import("std");
const print = std.debug.print;
const expect = std.testing.expect;

pub fn main() void{
  std.debug.print("Hello, World!\n", .{});
  print("Hello, {s}!\n", .{"World"});
}

test "always secceds"{
  try expect(true);
}

