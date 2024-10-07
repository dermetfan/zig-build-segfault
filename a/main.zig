const std = @import("std");

const b = @import("b");

pub fn main() !void {
    std.debug.print("{s} {s}!\n", .{b.verb, b.name});
}
