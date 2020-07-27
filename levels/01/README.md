# Level 1: Hello, world! (GNU edition)

In this level, we are going to raise the difficulty by building a
real™ project from the GNU project.  The tar file is located
[here](ftp://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz).

Write your solution in a new `default.nix` file, such that the
following occurs:

```
$ nix-build default.nix 
these derivations will be built:
  /nix/store/05knrdcycs49k9lqfdp86ci07sazd54i-hello-2.10.tar.gz.drv
  /nix/store/88v364md13f218w5nirds8wjmb2dzqbk-hello.drv
-- snip --
/nix/store/dd3abk1y7cxavbxh6lbdw2p3rkvalg1v-hello
$ ./result/bin/hello 
Hello, world!
```

If you get stuck, inspect `solution.nix` and run it with `nix-build
solution.nix`.

Hint: There is another dependency in addition to `gcc`.
