return {

  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "smart" },
      mappings = {
        i = {
          ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
          ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
          ["<C-q>"] = require("telescope.actions").send_selected_to_qflist + require("telescope.actions").open_qflist,
        },
      },
    },
  },
}
