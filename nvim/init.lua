-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local cwd = vim.fn.argv()[0]
    if cwd and vim.fn.isdirectory(cwd) == 1 then
      vim.cmd.cd(cwd)
    end
  end,
})

vim.opt.autochdir = false
