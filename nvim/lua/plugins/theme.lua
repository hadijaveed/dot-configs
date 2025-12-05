return {
  {
    "neanias/everforest-nvim",
    priority = 1000,
    opts = {
      background = "medium", -- "soft", "medium", or "hard"
      on_highlights = function(hl, palette)
        -- Line numbers - more visible
        hl.LineNr = { fg = palette.grey1, bg = palette.none }
        -- Current line number - bold and accented
        hl.CursorLineNr = { fg = palette.purple, bg = palette.none, bold = true }
        -- Neo-tree: Dim text (hidden files) - brighter
        hl.NeoTreeDimText = { fg = palette.grey2, bg = palette.none }
        -- Neo-tree: Git ignored files
        hl.NeoTreeGitIgnored = { fg = palette.grey1, bg = palette.none }
        -- Neo-tree: Dotfiles specifically
        hl.NeoTreeDotfile = { fg = palette.grey2, bg = palette.none }
        -- Neo-tree: Indent markers - subtle (matches catppuccin surface1)
        hl.NeoTreeIndentMarker = { fg = palette.bg2, bg = palette.none }
        -- Indent-blankline markers - subtle (matches catppuccin surface1)
        hl.IblIndent = { fg = palette.bg2, nocombine = true }
        hl.IndentBlanklineChar = { fg = palette.bg2 }
        -- Neo-tree: Folder expander arrows
        hl.NeoTreeExpander = { fg = palette.grey1, bg = palette.none }

        -- Neo-tree: Git status - clear visual distinction
        hl.NeoTreeGitUntracked = { fg = palette.orange, bg = palette.none } -- Bright for visibility
        hl.NeoTreeGitModified = { fg = palette.yellow, bg = palette.none } -- Changed files
        hl.NeoTreeGitAdded = { fg = palette.green, bg = palette.none } -- New/staged files
        hl.NeoTreeGitDeleted = { fg = palette.red, bg = palette.none } -- Removed files
        hl.NeoTreeGitConflict = { fg = palette.red, bg = palette.none, bold = true } -- Urgent attention
        hl.NeoTreeGitStaged = { fg = palette.blue, bg = palette.none } -- Ready to commit
        hl.NeoTreeGitUnstaged = { fg = palette.yellow, bg = palette.none } -- Pending changes

        -- BufferLine/TabLine - bright and readable
        -- Active/selected tab - bright white text, bold
        hl.BufferLineTabSelected = { fg = palette.fg, bg = palette.bg1, bold = true }
        hl.BufferLineBufferSelected = { fg = palette.fg, bg = palette.bg1, bold = true }
        -- Inactive tabs - brighter for better readability
        hl.BufferLineTab = { fg = palette.grey0, bg = palette.bg0 }
        hl.BufferLineBuffer = { fg = palette.grey0, bg = palette.bg0 }
        -- Background fill
        hl.BufferLineFill = { bg = palette.bg_dim }
        -- Modified buffers indicator
        hl.BufferLineModified = { fg = palette.yellow, bg = palette.bg0 }
        hl.BufferLineModifiedSelected = { fg = palette.yellow, bg = palette.bg1, bold = true }
        -- Git status indicators in bufferline
        hl.BufferLineAdded = { fg = palette.green, bg = palette.bg0 }
        hl.BufferLineAddedSelected = { fg = palette.green, bg = palette.bg1, bold = true }
        hl.BufferLineDeleted = { fg = palette.red, bg = palette.bg0 }
        hl.BufferLineDeletedSelected = { fg = palette.red, bg = palette.bg1, bold = true }
        hl.BufferLineChanged = { fg = palette.yellow, bg = palette.bg0 }
        hl.BufferLineChangedSelected = { fg = palette.yellow, bg = palette.bg1, bold = true }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
