# https://stackoverflow.com/questions/600079/how-do-i-clone-a-subdirectory-only-of-a-git-repository/52269934#52269934
# git clone -n --depth=1 --filter=tree:0  https://github.com/zobudz/book; cd book/; git sparse-checkout set --no-cone  /book; git checkout 
# ssh root@to1.uk -- "cd /var/www/to1.uk/gits/book/; git checkout"

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
