{ pkgs, lib, ... }:

{
  programs.brave = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
      "dbepggeogbaibhgnhhndojpepiihcmeb" # Vimium
      "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
    ];
  };

  # Disable Brave VPN, etc
  home.activation.bravePolicies = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    $DRY_RUN_CMD /usr/bin/sudo mkdir -p /etc/brave/policies/managed
    $DRY_RUN_CMD /usr/bin/sudo ln -sf ${../../configs/brave-policy.json} /etc/brave/policies/managed/GroupPolicy.json
  '';
}
