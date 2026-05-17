{
  imports = [
    ./ai.nix
    ./appearance.nix
    ./bufferline.nix
    ./keymaps.nix
    ./lsp.nix
    ./options.nix
    ./telescope.nix
    ./vimtex.nix
  ];

  plugins = {
    oil.enable = true; # File browser
    gitsigns.enable = true; # Git signs
  };
}
