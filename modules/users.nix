{config,pkgs,...}:

{
users.users."anand" = {
isNormalUser = true;
description = "anand";
extraGroups = ["networkmanager" "wheel"];
packages = with pkgs;[
thunderbird
];
};
}
