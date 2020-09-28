let 
  nixpkgs = import ./nix/nixpkgs.nix;
  pkgs = {
    ascii-table-ts = import ./ascii-table;
    app-rust = import ./app-rust;
    app-ts = import ./app-ts;
  };

in nixpkgs.buildEnv {
  name = "nix-intro";
  paths = [
    pkgs.ascii-table-ts
    pkgs.app-rust
    pkgs.app-ts
  ];
}
