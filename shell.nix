{
  pkgs ?
    import
      # nixos-25.05:
      (fetchTarball {
        url = "https://github.com/nixos/nixpkgs/archive/32a4e87942101f1c9f9865e04dc3ddb175f5f32e.tar.gz";
        sha256 = "1jvflnbrxa8gjxkwjq6kdpdzgwp0hs59h9l3xjasksv0v7xlwykz";
      })
      { },
}:
pkgs.mkShell {
  packages = [
    pkgs.cacert
    pkgs.nodejs_24
    pkgs.shfmt
  ];
}
