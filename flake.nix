{
  description = "Dev env with node 24, pnpm, & biome";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.nodejs_24
            pkgs.biome
            pkgs.git
            pkgs.nodePackages.pnpm
          ];

          shellHook = ''
            echo "Dev shell with node $(node -v), pnpm $(pnpm -v), biome"
          '';
        };
      });
}
