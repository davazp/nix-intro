#
# An easy example of managing your system declaratively
#
# You can install this with
#
#    nix-env --install -f my-packages.nix -A my-packages
#
# Alternatively, look at overlays.nix to locally extend the list of
# nixpkgs with your own package.
#
{pkgs ? import ./nixpkgs.nix}:
with pkgs;
{
  my-packages = buildEnv {
    name = "my-packages";
    paths = [
      ascii
      gforth
      qemu
    ];
  };
}

