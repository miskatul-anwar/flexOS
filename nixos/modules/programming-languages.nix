{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    (python313Full.withPackages (ps: with ps; [ ]))
    nodePackages_latest.nodejs
    nodePackages_latest.pnpm
    bun
    lua
    zig
    R
    clang
    numbat
    texliveFull
    nasm
    jdk23
  ];
}
