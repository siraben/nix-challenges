with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "scas";
  # fetchFromGitHub frees us from specifying the exact URL.
  src = fetchFromGitHub {
    owner = "KnightOS";
    repo = "scas";
    rev = "0.4.6";
    sha256 = "1c6s9nivbwgv0f8n7j73h54ydgqw5dcpq8l752dfrnqg3kv3nn0h";
  };
  nativeBuildInputs = [ cmake ];
  # Disable hardening for format strings.
  hardeningDisable = [ "format" ];
}
