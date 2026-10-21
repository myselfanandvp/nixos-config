{
inputs = {
  nixpkgs.url="github:NixOS/nixpkgs/nixos-unstable";
  home-manger.url = "github:nix-community/home-manager";
};

outputs = {self,nixpkgs,home-manager,...}:{
nixosConfigurations.nixos = nixpkgs.lib.nixosSystem{
system = "x86_64-linux";
modules = [
./configuration.nix

 home-manager.nixosModules.default
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
            };
          }
];

};
};

}
