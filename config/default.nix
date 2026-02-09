{
  imports = [
    ./appearance.nix
    ./bufferline.nix
    ./telescope.nix
    ./lsp.nix
    ./keymaps.nix
    ./options.nix
  ];

  plugins = {
    oil.enable = true; # File browser
    gitsigns.enable = true; # Git signs
  };
}
