{ ... }:
let
  selectOpts = "{ behavior = cmp.SelectBehavior.Insert }";
in
{
  # Настройки LSP
  plugins.lsp = {
    enable = true;

    # Привязки клавиш для работы gd, hover и прочего
    keymaps = {
      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gi" = "implementation";
        "K" = "hover";
        "<leader>rn" = "rename";
        "<leader>ca" = "code_action";
      };
    };

    servers = {
      # Spell checker
      harper_ls.enable = true;

      # Type script
      ts_ls.enable = true;

      # Lua
      lua_ls.enable = true;

      # Rust
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };

      # C / C++
      clangd = {
        enable = true;
        settings = {
          cmd = [
            "clangd"
            "--background-index"
          ];
          root_markers = [
            "compile_commands.json"
            "compile_flags.txt"
          ];
          filetypes = [
            "c"
            "cpp"
          ];
        };
      };

      # Python
      pyright.enable = true;

      # Svelte
      svelte.enable = true;
    };
  };

  # Автодополнение
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "buffer"; }
      ];

      window = {
        completion.border = "rounded";
        documentation.border = "rounded";
      };

      mapping = {
        "<Up>" = "cmp.mapping.select_prev_item(${selectOpts})";
        "<Down>" = "cmp.mapping.select_next_item(${selectOpts})";
        "<C-p>" = "cmp.mapping.select_prev_item(${selectOpts})";
        "<C-n>" = "cmp.mapping.select_next_item(${selectOpts})";
        "<C-u>" = "cmp.mapping.scroll_docs(-4)";
        "<C-d>" = "cmp.mapping.scroll_docs(4)";
        "<C-e>" = "cmp.mapping.abort()";
        "<C-y>" = "cmp.mapping.confirm({select = true})";
        "<CR>" = "cmp.mapping.confirm({select = false})";

        "<Tab>" = ''
          cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif require("luasnip").expand_or_jumpable() then
              require("luasnip").expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" })
        '';
        "<S-Tab>" = ''
          cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif require("luasnip").jumpable(-1) then
              require("luasnip").jump(-1)
            else
              fallback()
            end
          end, { "i", "s" })
        '';
      };
    };
  };

  # Дополнительные плагины и зависимости
  plugins = {
    lazydev.enable = true;
    luasnip.enable = true;
    cmp_luasnip.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    conform-nvim.enable = true;
  };
}

