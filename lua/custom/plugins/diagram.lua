return {
  "3rd/diagram.nvim",
  dependencies = {
    { "3rd/image.nvim" }, -- you'd probably want to configure image.nvim manually instead of doing this
  },
  opts = {
    -- Disable automatic rendering for manual-only workflow
    events = {
      render_buffer = {}, -- Empty = no automatic rendering
      clear_buffer = { "BufLeave" },
    },
    renderer_options = {
      mermaid = {
        background = nil,
        scale = 2,
        cli_args = {"-b \"#191724\"", "-c", vim.fn.stdpath("config") .. "/mermaid-config.json" },
      },
    },
  },
  keys = {
    {
      "<leader>gd", -- or any key you prefer
      function()
        require("diagram").show_diagram_hover()
      end,
      mode = "n",
      ft = { "markdown", "norg" }, -- Only in these filetypes
      desc = "Show diagram in new tab",
    },
  },
  -- config = function() 
  --   require("diagram").setup({
  --     integrations = {
  --       require("diagram.integrations.markdown"),
  --       require("diagram.integrations.neorg"),
  --     },
  --     renderer_options = {
  --       mermaid = {
  --         -- theme = "base",
  --         -- background = "#191724", -- Rosé Pine base background
  --         -- scale = 2,
  --         cli_args = { "-c", vim.fn.stdpath("config") .. "/mermaid-config.json" },
  --       },
  --       plantuml = {
  --         charset = "utf-8",
  --       },
  --       d2 = {
  --         theme_id = 1,
  --       },
  --       gnuplot = {
  --         theme = "dark",
  --         size = "800,600",
  --       },
  --     },
  --   })
  -- end
}
