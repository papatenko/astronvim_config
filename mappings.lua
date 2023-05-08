-- For Harpoon Keybinds

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- Change directory --
    ["<leader>cd"] = { ":cd %:h", desc = "Changes nvim dir relative to dir of file" },
    ["<leader>ch"] = { ":cd ~<cr>" },
    -- Other Keybinds --
    ["Z"] = { ":sp<CR>", desc = "Horizontal Split" },
    ["<leader>r"] = { "<Plug>CtrlSFCwordPath", desc = "Refactor" },
    ["<leader>s"] = { ":UndotreeToggle<CR>", desc = "Undotree" },
    ["<leader>k"] = { ":UndotreeFocus<CR>", desc = "Undotree" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-h>"] = false,
    ["<C-j>"] = false,
    ["<C-k>"] = false,
    ["<C-l>"] = false,
  },
}
