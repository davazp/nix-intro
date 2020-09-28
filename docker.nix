let
  nixpkgs = import ./nix/nixpkgs.nix;
  app-rust = import ./app-rust;
in
nixpkgs.dockerTools.buildImage {
  name = "nix-intro";
  tag = "latest";
  contents = app-rust;
  # This is indeed the default, but let's emphasize it :-)
  fromImageName = null;
  config = { 
    Cmd = [ "/bin/app-rust" ];
  };
}
