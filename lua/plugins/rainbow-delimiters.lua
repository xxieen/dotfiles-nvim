return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    dofile(vim.g.base46_cache .. "rainbowdelimiters")
  end,
}
