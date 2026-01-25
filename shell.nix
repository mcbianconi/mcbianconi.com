# Reference: https://nixos.org/manual/nix/stable/command-ref/nix-shell.html
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    hugo
    gnumake
  ];

  shellHook = ''
    echo "Hugo $(hugo version | cut -d' ' -f2)"
  '';
}
