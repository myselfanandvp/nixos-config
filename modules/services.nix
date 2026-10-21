{config,pkgs,...}:
{

services={

displayManager.gdm = {enable = true;};

desktopManager.gnome = {enable =true;};

pipewire={
enable = true;
alsa.support32Bit = true;
pulse.enable =true;
#jack.enable =true;
};

libinput = {enable =true;};

printing = {enable =true;};

xserver.xkb = {layout = "us"; variant = "";};

pulseaudio = {
enable = true;
};

rtkit = {
enable =true;
};


openssh = {
enable = true;
};


};


}
