{
  description = ''A stylish little logger to replace echo in command-line apps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-disruptek-cutelog-1_1_1.flake = false;
  inputs.src-github-disruptek-cutelog-1_1_1.ref   = "refs/tags/1.1.1";
  inputs.src-github-disruptek-cutelog-1_1_1.owner = "disruptek";
  inputs.src-github-disruptek-cutelog-1_1_1.repo  = "cutelog";
  inputs.src-github-disruptek-cutelog-1_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-disruptek-cutelog-1_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-disruptek-cutelog-1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}