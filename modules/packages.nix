{config,pkgs,...}:

{

environment.systemPackages = with pkgs;[
kitty
neovim
git
];

}
