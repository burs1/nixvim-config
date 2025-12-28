{ self, ... }: {
  plugins.telescope = {
    enable = true;

    keymaps = {
      "tf" = "find_files";
      "tg" = "live_grep";
      "tr" = "resume";
      "tb" = "buffers";
    };

    extensions = {
      fzf-native.enable = true;
    };
  };
}
