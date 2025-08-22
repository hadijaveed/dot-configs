return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        -- your integrations here if any
      },
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay1 }, -- Make line numbers more visible
          CursorLineNr = { fg = colors.lavender, style = { "bold" } }, -- Current line number
          NeoTreeDimText = { fg = colors.overlay1 }, -- Brighter for hidden files
          NeoTreeGitIgnored = { fg = colors.overlay0 }, -- Git ignored files
          NeoTreeDotfile = { fg = colors.overlay1 }, -- Dotfiles specifically
          -- Optional: Other Neo-tree elements you might want to adjust
          NeoTreeIndentMarker = { fg = colors.surface1 }, -- Indent guides
          NeoTreeExpander = { fg = colors.overlay2 }, -- The > arrow for folders
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
