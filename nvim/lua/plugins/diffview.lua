return {
  "akinsho/git-conflict.nvim",
  version = "*",
  event = "BufReadPre",
  keys = {
    { "<leader>gx", "<cmd>GitConflictListQf<cr>", desc = "Git Conflicts List" },
    { "<leader>gr", "<cmd>GitConflictRefresh<cr>", desc = "Refresh Conflicts" },
  },
  opts = {
    default_mappings = {
      ours = "co",
      theirs = "ct",
      none = "c0",
      both = "cb",
      next = "]x",
      prev = "[x",
    },
    default_commands = true,
    disable_diagnostics = false,
    list_opener = "copen", -- command or function to open the conflicts list
    highlights = {
      incoming = "DiffAdd",
      current = "DiffText",
    },
  },
  config = function(_, opts)
    require("git-conflict").setup(opts)

    -- Notification when conflict detected
    vim.api.nvim_create_autocmd("User", {
      pattern = "GitConflictDetected",
      callback = function()
        vim.notify("⚠️  Git conflict detected! Use ]x/[x to navigate, co/ct to resolve", vim.log.levels.WARN)
      end,
    })

    -- Notification when conflict resolved
    vim.api.nvim_create_autocmd("User", {
      pattern = "GitConflictResolved",
      callback = function()
        vim.notify("✅ Conflict resolved!", vim.log.levels.INFO)
      end,
    })
  end,
}
