{
  description = "Ambiente reprodutivel do Marco 2 de AEDV: roubos no RJ";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  outputs = { self, nixpkgs }:
    let
      systems = [ "aarch64-darwin" "x86_64-darwin" "aarch64-linux" "x86_64-linux" ];
    in {
      devShells = nixpkgs.lib.genAttrs systems (system:
        let
          pkgs = import nixpkgs { inherit system; };
          python = pkgs.python312.withPackages (ps: with ps; [
            jupyterlab ipykernel nbconvert nbformat
            pandas numpy matplotlib seaborn plotly
          ]);
        in {
          default = pkgs.mkShell {
            packages = [ python ];
            shellHook = ''
              export PYTHONNOUSERSITE=1
              export MPLBACKEND=Agg
              export MPLCONFIGDIR="''${TMPDIR:-/tmp}/aedv-rj-matplotlib"
            '';
          };
        });
    };
}
