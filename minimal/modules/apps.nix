{ pkgs, ...}: {

  environment.systemPackages = with pkgs; [
    git
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      # 'zap': uninstalls all formulae(and related files) not listed here.
      # cleanup = "zap";
    };

    taps = [
      "homebrew/services"
    ];

    brews = [
      "helix"
    ];

    casks = [
      "telegram", "figma", "iterm2", "foobar2000", "qbittorrent", "anki", "git-credential-manager"
    ];
  };
}
