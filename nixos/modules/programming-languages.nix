{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    (python312Full.withPackages (ps: with ps; [ matplotlib numpy pandas ]))
    nodePackages_latest.nodejs
    nodePackages_latest.pnpm
    bun
    lua
    zig
    R
    clang
    numbat
    nasm
    jdk23

    texliveFull
    typst
    typstfmt
    typst-live
    typstwriter
    dotnet-sdk

    # Neovim Specific needs
    eslint
    prettierd
    shellcheck
  ];
}
