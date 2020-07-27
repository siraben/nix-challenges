with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "hello";
  # The extra dependency.  You can find this out by checking nix log
  # for your derivation and finding out that the command `help2man` is
  # not found.
  buildInputs = [ gcc help2man ];
  # Fetch the sources with the corresponding hash.
  src = fetchurl {
    url = ftp://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz;
    sha256 = "1md7jsfd8pa45z73bz1kszpp01yw6x5ljkjk2hx7wl800any6465";
  };
  # Use autoconf, specify the compiler and prefix
  configurePhase = ''
    ./configure CC=gcc --prefix=$out
  '';
}
