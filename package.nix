{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { dependencies =
      [ node-fs
        ps-pkgs-ns.ursi.prelude
        task
      ];
  }
