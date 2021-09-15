{
  outputs = inputs@{ self, nixpkgs }:
  {
    legacyPackages = nixpkgs.legacyPackages;
  };
}
