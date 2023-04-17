-- For Harpoon Keybinds
local mark = require "harpoon.mark"
local ui = require "harpoon.ui"

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
    -- Rename variables --
    ["<leader>r"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left><Left>" },
    ["<leader>R"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>" },
    -- Harpoon --
    ["<leader>a"] = { mark.add_file },
    ["<C-p>"] = { ui.toggle_quick_menu },
    -- Row One
    ["<leader>jq"] = { function() ui.nav_file(1) end },
    ["<leader>jw"] = { function() ui.nav_file(2) end },
    ["<leader>je"] = { function() ui.nav_file(3) end },
    ["<leader>jr"] = { function() ui.nav_file(4) end },
    -- Row Two
    ["<leader>ja"] = { function() ui.nav_file(5) end },
    ["<leader>js"] = { function() ui.nav_file(6) end },
    ["<leader>jd"] = { function() ui.nav_file(7) end },
    ["<leader>jf"] = { function() ui.nav_file(8) end },
    -- Other Keybinds --
    ["Z"] = { ":" },
    ["<leader>s"] = { ":UndotreeToggle<CR>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
