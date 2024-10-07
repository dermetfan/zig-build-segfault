const std = @import("std");

pub fn build(b: *std.Build) void {
    const opts = .{
        .target = b.standardTargetOptions(.{}),
        .optimize = b.standardOptimizeOption(.{}),
    };

    const exe = b.addExecutable(.{
        .name = "a",
        .root_source_file = b.path("main.zig"),
        .target = opts.target,
        .optimize = opts.optimize,
    });
    b.installArtifact(exe);
}
