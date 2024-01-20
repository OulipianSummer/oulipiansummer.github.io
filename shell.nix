# shell.nix

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.git
    pkgs.jekyll
    pkgs.bundler
    pkgs.ruby
    pkgs.gnumake
    pkgs.libgcc
    pkgs.zlib
  ];

  shellHook  = ''
  source .bashrc
  '';
}
