{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { repo = "https://github.com/ursi/purescript-task-file.git";
    rev = "d6b5a3eac9148b072c27383b5489ce1b063a7c1f";
    dependencies =
      [ node-fs
        ps-pkgs-ns.ursi.prelude
        task
      ];
  }
