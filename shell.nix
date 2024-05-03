{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "my-ruby-app-shell";
  buildInputs = with pkgs; [
    (import ./default.nix { inherit pkgs; }).buildInputs
    rubyPackages.rspec
    cucumber
  ];
}
