return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  opts = {
    autotag = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
    ensure_installed = {
      "vim",
      "lua",
      "vimdoc",
      "html",
      "css",
      "cpp",
      "c",
      "markdown",
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "regex",
      "markdown_inline",
      "bash",
      "dockerfile",
      "gitignore",
      "query",
      "c",
      "cpp",
      "cmake",
    },
  },
}
