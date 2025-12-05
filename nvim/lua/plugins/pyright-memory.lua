return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                -- Reduce memory usage by limiting analysis features
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly", -- Only analyze open files
                typeCheckingMode = "basic", -- Use basic instead of strict
              },
            },
          },
          -- Increase Node.js memory limit to 4GB
          cmd = {
            "pyright-langserver",
            "--stdio",
          },
          -- Set environment variable for Node.js memory limit
          on_new_config = function(config, root_dir)
            config.cmd_env = {
              NODE_OPTIONS = "--max-old-space-size=4096"
            }
          end,
        },
      },
    },
  },
}