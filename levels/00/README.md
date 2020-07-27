# Level 0: Hello, world!

In this level, we are going to start things off easy with the classic
"Hello, world!" program. Write your solution in a new `default.nix`
file, such that the following occurs:

```
$ nix-build solution.nix 
these derivations will be built:
  /nix/store/sz62l69qlnmg74fx8k63rmw1rl3hyqvl-hello-world.drv
building '/nix/store/sz62l69qlnmg74fx8k63rmw1rl3hyqvl-hello-world.drv'...
unpacking sources
unpacking source archive /nix/store/15y0h40bpvwbrvp2dd9w1j7blhq8504g-00
-- snip --
/nix/store/gcfnhr9087qsi3pdir6lafpwq5cg61wy-hello-world
$ ./result/hello 
hello, world!
```

If you get stuck, inspect `solution.nix` and run it with `nix-build
solution.nix`.
