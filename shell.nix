let
  nixpkgs = import ./nix/nixpkgs.nix;
  pkgs = import ./default.nix;
in
nixpkgs.mkShell {
  buildInputs = [ nixpkgs.tree ];

  # also include dependencies needed to build our packages
  inputsFrom = [
    (import ./app-rust)
    (import ./app-ts)
  ];
  # and some custom configuration for our shell
  shellHook = ''
    alias ll="ls -l"
    export FOO=bar
  '';
}
