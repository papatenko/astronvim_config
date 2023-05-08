return {
  -- UI
  {
    "mbbill/undotree",
    event = "VeryLazy",
    config = function() vim.g.undotree_WindowLayout = 3 end,
  },
  -- Coding Conveinences
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "BufEnter",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "ggandor/leap.nvim",
    event = "BufEnter",
    config = function() require("leap").add_default_mappings() end,
  },
  {
    "tzachar/cmp-tabnine",
    event = "BufEnter",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
        ignored_file_types = {
          -- default is not to ignore
          -- uncomment to ignore in lua:
          -- lua = true
        },
        show_prediction_strength = false,
      }
    end,
  },
  {
    "dyng/ctrlsf.vim",
    event = "BufEnter",
    config = function()
      vim.g.ctrlsf_position = "right"
      vim.g.ctrlsf_auto_focus = {
        at = "start",
      }
    end,
  },
  {
    "mg979/vim-visual-multi",
    event = "BufEnter",
    config = function() vim.g.VM_leader = "Z" end,
  },
  -- Language Support
  {
    "p00f/clangd_extensions.nvim", -- install lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "clangd" }, -- automatically install lsp
      },
    },
  },
  {
    "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "tsserver" }, -- automatically install lsp
      },
    },
  },
  -- Other
  {
    "vim-ctrlspace/vim-ctrlspace",
    event = "VeryLazy",
  },
}
