{
  description = "Simple Haskell development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      hpkgs = pkgs.haskellPackages;
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          hpkgs.ghc
          hpkgs.cabal-install
          hpkgs.haskell-language-server
          hpkgs.hlint
        ];
      };
    };
}
