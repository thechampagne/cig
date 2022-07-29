const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const staticLib = b.addStaticLibrary("cig", "cig.zig");
    staticLib.setBuildMode(mode);
    staticLib.linkLibC();
    staticLib.install();

    const sharedLib = b.addSharedLibrary("cig", "cig.zig", .unversioned);
    sharedLib.setBuildMode(mode);
    sharedLib.linkLibC();
    sharedLib.install();
}
