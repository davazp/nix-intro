let pkgs = import ../nix/nixpkgs.nix;
in    
pkgs.rustPlatform.buildRustPackage rec {
  pname = "app-rust";
  version = "1.0.0";
  src = ./.;
  cargoSha256 = "sha256:0jacm96l1gw9nxwavqi1x4669cg6lzy9hr18zjpwlcyb3qkw9z7f";
}
