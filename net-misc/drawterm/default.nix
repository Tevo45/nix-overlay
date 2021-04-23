{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation {
  name = "drawterm";
  src = fetchhg {
    url = "https://code.9front.org/hg/drawterm";
    rev = "80a4267e62de";
    sha256 = "0rwfpkn6rm3ns138kdvdjx697n9hhb2hsfals6hiw6h9r4w41zmr";
  };
  buildInputs = [ x11 ];
  CONF = "unix";
  installPhase = ''
    mkdir -p "$out/bin"
    cp ./drawterm "$out/bin"
  '';
}
