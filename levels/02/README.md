# Level 2: scas assembler and linker for the Z80

In this level, we try building a CMake project.  The
[scas](https://github.com/KnightOS/scas/) Z80 assembler.  For the
`src` field of the derivation, use the following:

```nix
src = fetchFromGitHub {
  owner = "KnightOS";
  repo = "scas";
  rev = "0.4.6";
  sha256 = "1c6s9nivbwgv0f8n7j73h54ydgqw5dcpq8l752dfrnqg3kv3nn0h";
};
```

Write your solution in a new `default.nix` file, such that the
following occurs:

```
$ nix-build default.nix 
these derivations will be built:
  /nix/store/n550s3l9h3ag8m8v8bzjfdi5pcf65hzi-scas.drv
building '/nix/store/n550s3l9h3ag8m8v8bzjfdi5pcf65hzi-scas.drv'...
-- snip --
/nix/store/y0kyh0zbdllqmgjilc6lc2z6d9gw74ci-scas
$ ./result/bin/scas incr.asm
$ xxd incr.bin
00000000: 3e64 3cc3 0200                           >d<...
```

If you get stuck, inspect `solution.nix` and run it with `nix-build
solution.nix`.

Hint: `hardeningDisable`
