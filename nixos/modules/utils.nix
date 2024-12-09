{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mold
    gdb
    gcc
    clang
    lld
    lldb
    musl
    dioxus-cli
    surrealdb
    surrealdb-migrations
    surrealist
    trunk
  ];
}
