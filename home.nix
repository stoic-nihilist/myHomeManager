{ config, pkgs, inputs, ... }:

{
  home.username = "jeffreyyyy";
  home.homeDirectory = "/home/jeffreyyyy/";
  home.stateVersion = "26.05";

  nixpkgs.config.allowUnfree = true;

  imports = [
	#imports here
	inputs.helium.homeModules.default
	];


  targets.genericLinux.enable = true; 
  home.sessionVariables = {
  # Directs Nix-built audio applications to the host PulseAudio/PipeWire socket
  PULSE_SERVER = "unix:/run/user/${builtins.toString config.home.uid}/pulse/native";
};


  home.sessionPath = [
	"$HOME/.nix-profile/bin"
];



  programs.home-manager.enable = true;

#  programs.helium.enable = true;
  
  home.packages = with pkgs; [
    # add packages here
	nasm
	vlc
#	simplex-chat-desktop
#	telegram-desktop
	fragments
	vscodium
	jdk
	dotnet-sdk_11
	gcc
	cmake
	gnumake
	veracrypt
	whatsie
#	chatgpt	
#	spotify
	thunderbird
	opencode
	whatsie
	qbittorrent
	gpu-screen-recorder
  ];
}
