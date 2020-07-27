# NOTE: Like regular building, there are many possible solutions.
# This is just one of them.

# First, we import nixpkgs and open up its scope so that we can refer
# to packages in the dependency list.
with (import <nixpkgs> {});
# We use the mkDerivation function from stdenv to build a package with
# the standard environment.  It takes in a record with many fields.
stdenv.mkDerivation {
  # The name of the derivation.
  name = "hello-world";
  # The dependencies, in this case, gcc.
  buildInputs = [ gcc ];
  # We can omit the buildPhase here because there is already a
  # Makefile.

  # The installation phase, which consists of making the output
  # directory and moving the compiled binary to that directory.
  installPhase = ''
    mkdir -p $out/bin
    mv hello $out/bin
  '';
  # The sources, in this case the current directory.
  src = ./.;
}
