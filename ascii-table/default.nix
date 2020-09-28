let nixpkgs = import ../nix/nixpkgs.nix;
in
nixpkgs.runCommand "ascii-table" {
  buildInputs = [nixpkgs.ascii];
} ''
  mkdir -p $out/share
  ascii > $out/share/ascii.txt
''
