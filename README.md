# Zig issue [#21623](https://github.com/ziglang/zig/issues/21623)

## Problem Description

The Zig build system segfaults in `--system` mode
when `build.zig.zon` declares a dependency that
has a `path` dependency in its `build.zig.zon`
and is not itself a `path` dependency.

## How to Reproduce

```
cd a
zig build --fetch
zig build --system ~/.cache/zig/p
```
