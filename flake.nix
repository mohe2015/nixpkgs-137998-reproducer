{
  outputs = inputs@{ self, nixpkgs }:
  {
    legacyPackages = nixpkgs.legacyPackages;
    packages.x86_64-linux.test = nixpkgs.legacyPackages.x86_64-linux.stdenv.mkDerivation {
      pname = "test";
      version = "0.0.1";
      src = ./.;

      installPhase = ''
        mkdir -p $out
        ls -lh master.zip > $out/test
      '';

      
    };
  };
}
