let pkgs = import ../nix/nixpkgs.nix;
in
pkgs.mkYarnPackage {
  src=./.;
  buildPhase=''
    yarn build
  '';
}
