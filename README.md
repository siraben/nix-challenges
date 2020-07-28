# Level up with Nix challenges

Nix is a refreshing look on what the future of package management
could look like.  Declarative, deterministic, purely functional, able
to handle packages of different versions and build systems of all
kinds.  The documentation is also very good, there's resources such as
[Nix Pills](https://nixos.org/nixos/nix-pills/) and the [Nixpkgs
manual](https://nixos.org/nixpkgs/manual/).  However, to get from
reading those resources to building real-world projects can seem
daunting.  If only there was a way to practice your building skills.

Here I propose just that, a set of Nix challenges to help you get
familiar with building things.  Starting from a basic C project,
you'll get acquainted with transforming build scripts from non-Nix
platforms using a variety of tools at your disposal (`patchSheBangs`,
etc.).  Solutions will be provided, so if you get stuck you'll be able
to see how it works.

This project is **not** aimed at teaching you Nix, for that, see the
resources linked above.  However, I'll provide as much comments as
necessary to help those who may not be very familiar with Nix follow
along.


## The Levels
- Level 0: Hello world C program (Makefile project)
- Level 1: GNU Hello (GNU project)
- Level 2: scas assembler (CMake project)
- Level ???: [TilEm](http://lpg.ticalc.org/prj_tilem/)

