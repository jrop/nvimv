{
  lib,
  stdenv,
  makeWrapper,
  bash,
  curl,
  jq,
  git,
  gnumake,
  cmake
}:

stdenv.mkDerivation {
  pname = "nvimv";
  version = "0.1.0";

  src = ./.;

  nativeBuildInputs = [ makeWrapper ];

  buildInputs = [
    bash
    curl
    jq
    git
    gnumake
    cmake
  ];

  dontConfigure = true;
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp nvimv $out/bin/nvimv
    chmod +x $out/bin/nvimv

    wrapProgram $out/bin/nvimv \
      --prefix PATH : ${
        lib.makeBinPath [
          bash
          curl
          jq
          git
          gnumake
          cmake
        ]
      }

    runHook postInstall
  '';

  meta = with lib; {
    description = "A version manager for Neovim";
    homepage = "https://github.com/example/nvimv";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.unix;
  };
}
