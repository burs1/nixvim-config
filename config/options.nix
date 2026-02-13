{ self, ... }: {
  clipboard.register = "unnamedplus";

  extraConfigLuaPre = ''
    vim.g.mapleader = " "
    vim.g.maplocalleader = " "
    vim.g.have_nerd_font = true
  '';

  opts = {
    autoread = true;
    belloff = "";
    breakindent = true;
    cmdheight = 0;
    errorbells = true;
    expandtab = true;
    ignorecase = true;
    linebreak = true;
    listchars = { tab = "» "; trail = "·"; nbsp = "␣"; };
    list = true;
    number = true;
    relativenumber = true;
    scrolloff = 10;
    shiftwidth = 2;
    showmode = false;
    signcolumn = "yes";
    smartcase = true;
    softtabstop = 2;
    splitbelow = true;
    splitright = true;
    tabstop = 2;
    timeoutlen = 100;
    undofile = true;
    updatetime = 250;
  };
}
