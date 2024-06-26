return {

  -- {
  --   "Pocco81/TrueZen.nvim",
  --   cmd = { "TZAtaraxis", "TZMinimalist" },
  --   config = function()
  --     require "custom.configs.truezen" -- just an example path
  --   end,
  -- },
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    opts = {
      completion = {
        completeopt = "menu,menuone,noselect,preview",
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
      dofile(vim.g.base46_cache .. "trouble")
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
    "folke/which-key.nvim",
    enabled = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "pyright",
        "clangd",
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "clang-format", -- cpp formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
      },
    },
  },
}
