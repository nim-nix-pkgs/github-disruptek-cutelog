{
  description = ''A stylish little logger to replace echo in command-line apps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-disruptek-cutelog-master".dir   = "master";
  inputs."github-disruptek-cutelog-master".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-master".ref   = "master";
  inputs."github-disruptek-cutelog-master".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-master".type  = "github";
  inputs."github-disruptek-cutelog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-1_0_1".dir   = "1_0_1";
  inputs."github-disruptek-cutelog-1_0_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-1_0_1".ref   = "master";
  inputs."github-disruptek-cutelog-1_0_1".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-1_0_1".type  = "github";
  inputs."github-disruptek-cutelog-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-1_0_2".dir   = "1_0_2";
  inputs."github-disruptek-cutelog-1_0_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-1_0_2".ref   = "master";
  inputs."github-disruptek-cutelog-1_0_2".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-1_0_2".type  = "github";
  inputs."github-disruptek-cutelog-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-1_1_0".dir   = "1_1_0";
  inputs."github-disruptek-cutelog-1_1_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-1_1_0".ref   = "master";
  inputs."github-disruptek-cutelog-1_1_0".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-1_1_0".type  = "github";
  inputs."github-disruptek-cutelog-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-1_1_1".dir   = "1_1_1";
  inputs."github-disruptek-cutelog-1_1_1".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-1_1_1".ref   = "master";
  inputs."github-disruptek-cutelog-1_1_1".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-1_1_1".type  = "github";
  inputs."github-disruptek-cutelog-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-1_1_2".dir   = "1_1_2";
  inputs."github-disruptek-cutelog-1_1_2".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-1_1_2".ref   = "master";
  inputs."github-disruptek-cutelog-1_1_2".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-1_1_2".type  = "github";
  inputs."github-disruptek-cutelog-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog-2_0_0".dir   = "2_0_0";
  inputs."github-disruptek-cutelog-2_0_0".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog-2_0_0".ref   = "master";
  inputs."github-disruptek-cutelog-2_0_0".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog-2_0_0".type  = "github";
  inputs."github-disruptek-cutelog-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}