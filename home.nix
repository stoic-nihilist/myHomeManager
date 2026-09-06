{ config, pkgs, inputs, ... }:

{
  home.username = "kaiguaaaa";
  home.homeDirectory = "/home/kaiguaaaa";
  home.stateVersion = "26.05";

  imports = [
	#imports here
	inputs.helium.homeModules.default
	];
 
  home.sessionVariables = {
  # Directs Nix-built audio applications to the host PulseAudio/PipeWire socket
  PULSE_SERVER = "unix:/run/user/${builtins.toString config.home.uid}/pulse/native";
};

  programs.home-manager.enable = true;

  programs.helium.enable = true;
  
  home.packages = with pkgs; [
    # add packages here
	nasm
	vlc
	simplex-chat-desktop
	telegram-desktop
	fragments
	jdk
	dotnet-sdk_11
	gcc
	cmake
	gnumake
	spotify
	thunderbird
  ];
}
