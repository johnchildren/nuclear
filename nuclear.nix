{ mkDerivation, base, bytestring, containers, llvm-hs, llvm-hs-pure
, megaparsec, mtl, repline, stdenv, text
}:
mkDerivation {
  pname = "nuclear";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring containers llvm-hs llvm-hs-pure megaparsec mtl text
  ];
  executableHaskellDepends = [
    base containers megaparsec mtl repline text
  ];
  testHaskellDepends = [ base ];
  homepage = "https://github.com/jchildren/nuclear#readme";
  description = "A language for numerical arrays";
  license = stdenv.lib.licenses.bsd3;
}
