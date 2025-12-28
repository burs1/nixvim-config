{ self, ... }: {
  keymaps = [
    {
      action = "<cmd>bd<CR>";
      key = "gc";
      mode = [ "n" ];
      options.silent = true;
    }
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "gt";
      mode = [ "n" ];
      options.silent = true;
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "gT";
      mode = [ "n" ];
      options.silent = true;
    }
    {
      action = "<gv";
      key = "<Tab>";
      mode = [ "v" ];
      options.silent = true;
    }
    {
      action = ">gv";
      key = "<Tab>";
      mode = [ "v" ];
      options.silent = true;
    }

    {
      action = "<Esc>";
      key = "jk";
      mode = [ "i" ];
      options.silent = true;
    }
    {
      action = "<cmd>nohlsearch<CR>";
      key = "<Esc>";
      mode = [ "n" ];
      options.silent = true;
    }
  ];
}
