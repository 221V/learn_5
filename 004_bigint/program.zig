
// https://github.com/ziglang/zig/blob/master/lib/std/math/big/int.zig

const std = @import("std");
const stdin = std.io.getStdIn().reader();
//const stdout = std.io.getStdOut().writer();
const big = std.math.big.int;
const print = std.debug.print;


pub fn main() !void{
  var gpa = std.heap.GeneralPurposeAllocator(.{}){};
  defer _ = gpa.deinit();
  const allocator = gpa.allocator();
  
  //try stdout.print("Enter your number:\n", .{});
  print("Enter your number:\n", .{});
  
  var buffer : [1024]u8 = undefined;
  
  const input = try stdin.readUntilDelimiterOrEof(&buffer, '\n') orelse {
    print("not number!\n", .{});
    return;
  };
  
  var num = try big.Managed.initSet(allocator, 0);
  defer num.deinit();
  
  try num.setString(10, input); // number base 10
  print("n = {}\n", .{num});
  
  try num.addScalar(&num, 1); // num = num + 1;
  print("n + 1 = {}\n", .{num});
  
  try num.mul(&num, &num); // num = num * num
  print("(n + 1) ^ 2 = {}\n", .{num});
}

