{
    description = "Sergio's Nix configuration for neovim";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = {self, nixpkgs, flake-utils, ...}:
        flake-utils.lib.eachDefaultSystem (system:
            let
                pkgs = import nixpkgs {
                    inherit system;
                };
            in {
                devShells.default = pkgs.mkShell {
                    buildInputs = [
                        pkgs.neovim
                    ];
                    shellHook = ''
                        echo "Welcome to the Nix shell for Neovim!"
                        '';
                }:
            };
        );
}
