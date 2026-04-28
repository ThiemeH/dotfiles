{ ... }:

{
  programs.zsh.shellAliases = {
    hms = "home-manager switch";

    ".." = "cd ..";
    "..." = "cd ../..";
    "...." = "cd ../../..";

    cat = "bat";
    ls = "eza";
    ll = "eza -la";
    la = "eza -a";
    lt = "eza --tree";

    vim = "nvim";
    vi = "nvim";

    zed = "zeditor";
    fetch = "fastfetch";
  };
}
