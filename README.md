# Zig issue \#

## Problem Description

The Zig build system segfaults when `build.zig.zon`
declares a dependency that has a `path` dependency
in its `build.zig.zon`.

## How to Reproduce

```
cd a
zig build --fetch
zig build --system ~/.cache/zig/p
```
