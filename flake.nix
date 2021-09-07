{

  description = "A terminal iptv player written in bash";
  
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          packages.termv =
            pkgs.stdenv.mkDerivation {
              name = "termv";
              src = self;
              phases = [ "unpackPhase" "patchPhase" "installPhase" ];
              patchPhase = with pkgs; ''
                substituteInPlace termv \
                  --replace curl ${curl}/bin/curl \
                  --replace fzf ${fzf}/bin/fzf \
                  --replace gawk ${gawk}/bin/gawk \
                  --replace jq ${jq}/bin/jq \
                  --replace mpv ${mpv}/bin/mpv \
                  --replace xdo ${xdo}/bin/xdo
              '';
              installPhase = ''
                install -m 755 -D termv $out/bin/termv
              '';
            };
          defaultPackage = self.packages.${system}.termv;
        }
      );

}
