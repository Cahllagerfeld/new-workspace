# https://nix.dev/tutorials/declarative-and-reproducible-developer-environments
with import <nixpkgs> { };

mkShell {

  # Package names can be found via https://search.nixos.org/packages
  nativeBuildInputs = [
    # baseline 
    direnv mosh

    #javascript
    nodejs-16_x

    # cloud sdks
    google-cloud-sdk

    # docker
    dive
  ];

  NIX_ENFORCE_PURITY = true;

  shellHook = ''
  '';
}
