{
  description = "Dev env with node 24, pnpm, and biome";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    {
      self,
      nixpkgs,
    }:
    let
      system = "x86_64-linux"; # or "aarch64-darwin" for macOS arm64
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs_24
          pkgs.biome
          pkgs.nodePackages.pnpm
        ];

        shellHook = ''
          echo "Dev shell with Node.js $(node -v), pnpm $(pnpm -v), biome $(biome version)"
        '';
      };
    };
}
