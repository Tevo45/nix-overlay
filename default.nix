self: super:
with builtins;
let subdirs = [
      ./app-os
      ./net-misc
    ];
in foldl' (a: b: a // b) {}
  (map (x: import x self super) subdirs)
