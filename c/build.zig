const std = @import("std");

pub fn build(b: *std.Build) void {
    _ = b.addModule("c", .{
        .root_source_file = b.path("root.zig"),
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    });
}
