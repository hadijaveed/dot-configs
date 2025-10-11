return {
  "akinsho/bufferline.nvim",
  optional = true, -- it's preinstalled by LazyVim
  opts = function(_, opts)
    if (vim.g.colors_name or ""):find("catppuccin") then
      local ok, ctp = pcall(require, "catppuccin.groups.integrations.bufferline")
      if ok and ctp then
        opts.highlights = (ctp.get_theme and ctp.get_theme()) or (ctp.get and ctp.get()) or opts.highlights
      end
    end
  end,
}
