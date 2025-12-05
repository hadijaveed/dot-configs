-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Override LazyVim's default search keymaps
local telescope = require("telescope.builtin")

-- Fixed string search with hidden files
vim.keymap.set("n", "<leader>sg", function()
  telescope.live_grep({
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--fixed-strings",
      "--hidden",
      "--glob=!.git",
    },
  })
end, { desc = "Grep (fixed + hidden)" })

vim.keymap.set("n", "<leader>/", function()
  telescope.live_grep({
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--fixed-strings",
      "--hidden",
      "--glob=!.git",
    },
  })
end, { desc = "Grep (fixed + hidden)" })

-- Also override file finding to include hidden files
vim.keymap.set("n", "<leader>ff", function()
  telescope.find_files({
    hidden = true,
    find_command = { "rg", "--files", "--hidden", "--glob=!.git" },
  })
end, { desc = "Find Files (including hidden)" })

-- Paste without overwriting register
vim.keymap.set("v", "<leader>p", '"_dP', { desc = "Paste without overwriting register" })

-- disable inline notifications for distraction free coding
vim.keymap.set("n", "<leader>td", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })
