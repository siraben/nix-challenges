# Level 0: Hello, world!

In this level, we are going to start things off easy with the classic
"Hello, world!" program. Write your solution in a new `default.nix`
file, such that the following occurs:

```
$ nix-build default.nix 
these derivations will be built:
  /nix/store/jz9sz6vz3v132fwq6401ayk5gqh9ni4s-hello-world.drv
building '/nix/store/jz9sz6vz3v132fwq6401ayk5gqh9ni4s-hello-world.drv'...
-- snip --
/nix/store/fs9j5i8p9pr28j9mvsz9yz599kwh17l4-hello-world
$ ./result/bin/hello
hello, world!
```

If you get stuck, inspect `solution.nix` and run it with `nix-build
solution.nix`.
