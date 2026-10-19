{
inputs = {
  nixpkgs.url="github:NixOS/nixpkgs/nixos-unstable";
  home-manger = {
	url ="github:nix-community/home-manager/release-25.05";
	inputs.nixpkgs.follows = "nixpkgs";
  };
};

outputs = {self,nixpkgs,home-manager,...}:{
nixosConfigurations.nixos = nixpkgs.lib.nixosSystem{
system = "x86_64-linux";
modules = [
./configurations.nix

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
