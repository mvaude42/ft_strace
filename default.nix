with import <nixpkgs> {}; {
  cEnv = stdenv.mkDerivation {
    name = "c";
    buildInputs = [ stdenv clang llvm ];
  };
}
