{ lib, stdenv, fetchFromGitHub, ncurses }:

stdenv.mkDerivation rec {
  pname = "sl";
  version = "0.1";
  src = fetchFromGitHub {
    owner = "Comodaino";
    repo = "clearSl";
    rev = "5d2d2c346e65dc52fa784c9b15123f7eb8848239";
    sha256 = "sha256-5+CVcDSfyEq3CLRvnMQkCe8cl2MmZHU6oTde7fes2aY=";
  };

  buildInputs = [ ncurses ];

  makeFlags = [ "CC:=$(CC)" ];

  installPhase = ''
    runHook preInstall

    install -Dm755 -t $out/bin sl
    install -Dm644 -t $out/share/man/man1 sl.1{,.ja}

    runHook postInstall
  '';

  meta = with lib; {
    description = "Steam Locomotive runs across your terminal when you type 'sl'";
    homepage = "http://www.tkl.iis.u-tokyo.ac.jp/~toyoda/index_e.html";
    license = rec {
      shortName = "Toyoda Masashi's free software license";
      fullName = shortName;
      url = "https://github.com/eyJhb/sl/blob/master/LICENSE";
    };
    maintainers = with maintainers; [ eyjhb ];
    platforms = platforms.unix;
  };
}
