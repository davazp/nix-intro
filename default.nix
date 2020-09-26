let 
  nixpkgs = import ./nix/nixpkgs.nix;
  pkgs = {
    app-rust = import ./app-rust;
    app-ts = import ./app-ts;
  };

in nixpkgs.buildEnv {
  name = "nix-intro";
  paths = [
    pkgs.app-rust
    pkgs.app-ts
  ];
}
