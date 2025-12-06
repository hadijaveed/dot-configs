return {
  "akinsho/bufferline.nvim",
  optional = true,
  opts = function(_, opts)
    -- Make tabs bigger and clearer
    opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
      tab_size = 22,
      max_name_length = 24,
      separator_style = "thick",
      indicator = {
        style = "icon",
        icon = "▎",
      },
    })

    -- Apply theme-specific highlights
    local colors_name = vim.g.colors_name or ""

    if colors_name:find("catppuccin") then
      local ok, ctp = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and ctp then
        opts.highlights = (ctp.get_theme and ctp.get_theme()) or (ctp.get and ctp.get()) or opts.highlights
      end
    elseif colors_name:find("everforest") then
      -- Everforest medium dark palette colors
      opts.highlights = {
        -- Fill (background behind all tabs)
        fill = { bg = "#232a2e" },

        -- Inactive buffer/tab - dimmed
        background = { fg = "#7a8478", bg = "#232a2e" },
        tab = { fg = "#7a8478", bg = "#232a2e" },
        buffer_visible = { fg = "#859289", bg = "#2d353b" },

        -- Active/selected buffer/tab - bright and bold
        buffer_selected = { fg = "#d3c6aa", bg = "#3d484d", bold = true, italic = false },
        tab_selected = { fg = "#d3c6aa", bg = "#3d484d", bold = true },

        -- Indicator (left edge of active tab)
        indicator_selected = { fg = "#a7c080", bg = "#3d484d" },
        indicator_visible = { fg = "#7a8478", bg = "#2d353b" },

        -- Separators
        separator = { fg = "#232a2e", bg = "#232a2e" },
        separator_selected = { fg = "#232a2e", bg = "#3d484d" },
        separator_visible = { fg = "#232a2e", bg = "#2d353b" },

        -- Modified indicator
        modified = { fg = "#dbbc7f", bg = "#232a2e" },
        modified_visible = { fg = "#dbbc7f", bg = "#2d353b" },
        modified_selected = { fg = "#dbbc7f", bg = "#3d484d" },

        -- Close button
        close_button = { fg = "#7a8478", bg = "#232a2e" },
        close_button_visible = { fg = "#859289", bg = "#2d353b" },
        close_button_selected = { fg = "#e67e80", bg = "#3d484d" },

        -- Duplicate (when same filename in multiple buffers)
        duplicate = { fg = "#7a8478", bg = "#232a2e", italic = true },
        duplicate_visible = { fg = "#859289", bg = "#2d353b", italic = true },
        duplicate_selected = { fg = "#d3c6aa", bg = "#3d484d", italic = true },
      }
    end
  end,
}
