return {

  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = {
      completion = {
        completeopt = "menu,menuone,noselect,preview",
      },

      formatting = {
        format = function(_, vim_item)
          --vim_item.menu = ""
          --vim_item.kind = ""
          return vim_item
        end,
      },
    },
  },
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
    keys = {
      { "<leader>tx", "<cmd>TroubleToggle<CR>", desc = "Trouble Open/close trouble list" },
      {
        "<leader>tw",
        "<cmd>TroubleToggle workspace_diagnostics<CR>",
        desc = "Trouble Open trouble workspace diagnostics",
      },
      {
        "<leader>td",
        "<cmd>TroubleToggle document_diagnostics<CR>",
        desc = "Trouble Open trouble document diagnostics",
      },
      { "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", desc = "Trouble Open trouble quickfix list" },
      { "<leader>tl", "<cmd>TroubleToggle loclist<CR>", desc = "Trouble Open trouble location list" },
      { "<leader>tt", "<cmd>TodoTrouble<CR>", desc = "Trouble Open todos in trouble" },
    },
    config = function()
      require("trouble").setup()
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "clangd",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    -- enable autotagging (w/ nvim-ts-autotag plugin)
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
    opts = {
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
  },
}
