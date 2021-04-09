{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { repo = "https://github.com/ursi/purescript-task-file.git";
    rev = "";
    dependencies =
      [ node-fs
        ps-pkgs-ns.ursi.prelude
        task
      ];
  }
