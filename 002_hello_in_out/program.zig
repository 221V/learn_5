
const std = @import("std");
const stdout = std.io.getStdOut().writer();
const stdin = std.io.getStdIn().reader();
const print = std.debug.print;

pub const INVALID_NUMBER_ERROR = "Invalid number value!\n";
pub const INPUT_TXT = "Please type number from 1 to 5 and press enter:\n";


pub fn main() !void{
  var buffer: [100]u8 = undefined;
  std.debug.print(INPUT_TXT, .{});
  
  const line = try stdin.readUntilDelimiterOrEof(&buffer, '\n');
  if(line) |input|{
    const got_int = std.fmt.parseInt(i32, input, 10) catch {
      print(INVALID_NUMBER_ERROR, .{});
      return;
    };
    if(got_int > 0 and got_int < 6){
      const doubled_int = got_int * 2;
      print("{} * 2 = {}\n", .{ got_int, doubled_int });
    }else{
      print(INVALID_NUMBER_ERROR, .{});
    }
  
  }else{
    print(INVALID_NUMBER_ERROR, .{});
  }
}

