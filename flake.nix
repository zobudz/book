{
  description = "xobudz/book: Electronic airprox avoidance";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.mdbook = nixpkgs.legacyPackages.x86_64-linux.mdbook;

    packages.x86_64-linux.default = self.packages.x86_64-linux.mdbook;

  };
}
