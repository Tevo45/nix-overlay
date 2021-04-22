self: super:
with builtins;
let subdirs = [
      ./app-os
    ];
in foldl' (a: b: a // b) {}
  (map (x: import x self super) subdirs)
