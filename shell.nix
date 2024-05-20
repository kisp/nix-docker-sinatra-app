{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "nix-docker-sinatra-app-shell";
  buildInputs = with pkgs; [
    (import ./default.nix { inherit pkgs; }).buildInputs
    rubyPackages.rspec
    flyctl
  ];
}
