return {
  "RRethy/vim-illuminate",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
    large_file_overrides = {
      providers = { "lsp", "treesitter" },
    },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)

    dofile(vim.g.base46_cache .. "vim-illuminate")

    vim.keymap.set("n", "]]", function()
      require("illuminate").goto_next_reference(wrapscan)
    end)

    vim.keymap.set("n", "[[", function()
      require("illuminate").goto_prev_reference(wrapscan)
    end)
  end,
}
