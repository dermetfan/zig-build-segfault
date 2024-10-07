const std = @import("std");

pub fn build(b: *std.Build) void {
    const opts = .{
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    };

    const mod = b.addModule("b", .{
        .root_source_file = b.path("root.zig"),
        .target = opts.target,
        .optimize = opts.optimize,
    });
    mod.addImport("c", b.dependency("c", opts).module("c"));
}
