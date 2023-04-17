return {
  -- Theme
  { "navarasu/onedark.nvim" },
  -- UI
  {
    "mbbill/undotree",
    event = "VeryLazy",
  },
  {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
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
  {},
}
