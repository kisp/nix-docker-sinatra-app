{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "my-ruby-app";

  src = ./.;

  buildInputs = [
    pkgs.ruby
    pkgs.rubyPackages.sinatra
    pkgs.rubyPackages.rackup
    pkgs.rubyPackages.puma
  ];

  nativeBuildInputs = [ pkgs.makeWrapper ];

  installPhase = ''
    mkdir -p $out/bin
    mkdir -p $out/lib
    cp exe/app.rb $out/bin
    cp lib/*.rb $out/lib
  '';

  postFixup = ''
  wrapProgram $out/bin/app.rb \
    --set RUBYLIB $RUBYLIB
'';
}
