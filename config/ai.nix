{ self, ... }:

{
  keymaps = [
    {
      action = "<cmd>CodeCompanionChat Toggle<cr>";
      key = "<leader>ac";
      mode = [ "n" ];
      options.silent = true;
    }
    {
      action = "<cmd>CodeCompanion<cr>";
      key = "<leader>ai";
      mode = [ "n" ];
      options.silent = true;
    }
    {
      action = "<cmd>CodeCompanionActions<cr>";
      key = "<leader>aa";
      mode = [ "n" ];
      options.silent = true;
    }
  ];

  plugins.codecompanion = {
    enable = true;

    settings = {
      opts = {
        send_code = true;
      };

      strategies = {
        agent.adapter = "ollama";
        chat.adapter = "ollama";
        inline.adapter = "ollama";
      };

      adapters = {
        http = {
          ollama = {
            __raw = ''
              function()
                return require("codecompanion.adapters").extend("openai_compatible", {
                  env = {
                    url = "http://localhost:1234",
                  },
                })
              end'';
          };
        };
      };
    };
  };
}
