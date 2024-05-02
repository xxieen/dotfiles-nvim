local options = {
  formatters_by_ft = {
        javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				cpp = { "clang-format" },
  },

  format_on_save = {
  -- These options will be passed to conform.format()
  timeout_ms = 500,
  lsp_fallback = true,
    async = false,

  },
}

require("conform").setup(options)
