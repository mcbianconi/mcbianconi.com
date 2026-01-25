{
  description = "My Personal Site";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.hugo
          ];

          shellHook = ''
            echo ""
            echo "Hugo $(hugo version | cut -d' ' -f2)"
            echo ""
            echo "Commands:"
            echo "  dev        → hugo server -D --navigateToChanged"
            echo "  deploy     → commit + push"
            echo ""
          '';
        };
      }
    );
}
