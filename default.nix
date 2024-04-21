with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "personal-website-bundler-env";
    inherit ruby;
    gemfile = ./local.Gemfile;
    lockfile = ./local.Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "personal-website";
  buildInputs = [gems bundler ruby];

  shellHook = ''
    exec ${gems}/bin/jekyll serve --watch
  '';
}
