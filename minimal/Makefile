deploy:
	nix build .#darwinConfigurations.iMac.system \
	   --extra-experimental-features 'nix-command flakes'

	./result/sw/bin/darwin-rebuild switch --flake .#iMac

