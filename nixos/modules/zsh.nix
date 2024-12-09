{ ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    # autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/flexOS/";
        home = "/home/miskat";
      in
      {
        rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
        upd = "nix flake update ${flakeDir}";
        upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

        hms = "home-manager switch --flake ${flakeDir}";

        conf = "nvim ${flakeDir}/nixos/configuration.nix";
        pkgs = "nvim ${flakeDir}/nixos/packages.nix";
        "ls" = "lsd";
        "cd" = "z";
        grep = "grep --color=auto";
        cl = "clear";
        bk = "cd ..";
        q = "exit";
        "ll" = "ls -ltr";
        "g" = "gh";
        "e" = "nvim";
        "l" = "tree";
        "cpu" = "cpufetch";
        "gpu" = "gpufetch";
        "chatgpt" = "tgpt";
        "github" = "gitui";
        "cat" = "bat";
        "t" = "tmux";
        "open" = "xdg-open";
        "rmm" = "remove";
        "wolfram" = "open https://www.wolframalpha.com/input/";
        "codellama" = "ollama run codellama";
        "llama" = "ollama run llama3.1:latest";
        "cmatrix" = "cmatrix | lolcat";
        "eza" = "eza --color=always --long --git --no-filesize --icons=always --no-time --no-permissions --no-user";
        "doas" = "sudo";
        "gdb" = "gdb -q";
        "tree" = "lsd --tree";
        "codeforces" = "cf-tool";
        # fzf = 'fzf - -preview " bat - -style=numbers --color=always {}"';


      };

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "history-substring-search"
        "vi-mode"
        "command-not-found"
        "colored-man-pages"
        "sudo"
        "web-search"
      ];
      theme = "agnoster";
    };
  };

}
