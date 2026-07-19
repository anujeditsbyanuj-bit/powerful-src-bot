{ pkgs }: {
  deps = [
    pkgs.python312
    pkgs.chromium
    pkgs.ffmpeg
    pkgs.aria2
    pkgs.megatools
    pkgs.cacert
    pkgs.p7zip
    # RAR support (archive.py's /unzip) needs the proprietary `unrar` tool,
    # which lives in nixpkgs' unfree set. Uncomment BOTH lines below if you
    # need RAR extraction on Replit — p7zip alone already covers zip/7z/
    # tar/gz/bz2/xz.
    # pkgs.unrar
  ];
  env = {
    CHROMIUM_EXECUTABLE_PATH = "${pkgs.chromium}/bin/chromium";
    # NIXPKGS_ALLOW_UNFREE = "1";  # required if you uncomment pkgs.unrar above
  };
}
