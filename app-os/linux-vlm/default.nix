{ pkgs ? import <nixpkgs> {} }:

with pkgs;
stdenv.mkDerivation rec {
  name = "linux-vlm";
  src = fetchFromGitHub {
    owner = "jjachemich";
    repo = "linux-vlm";
    rev = "4157f06770e81684c98056a9591af1a68af84806";
    sha256 = "0xq9ys0yj5pb6wj5v4xpkql0yl41kwp021ggqd8nb4x6nvd2a9qd";
  };
  buildInputs = [ x11 clisp autoreconfHook ];
  patches = [ ./fix-crypt.patch ];
}
