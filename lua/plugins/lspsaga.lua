return {
  "nvimdev/lspsaga.nvim",
  ft = { "c", "cpp", "lua", "rust", "go" },
  config = function()
    require("lspsaga").setup {
      vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Lspsaga lookup info" }),
      vim.keymap.set("n", "<leader>a", "<cmd>Lspsaga outline<CR>", { desc = "Lspsaga itemlist" }),
      vim.keymap.set("n", "<leader>cA", "<cmd>Lspsaga code_action<CR>", { desc = "Lspsaga code_action" }),
      vim.keymap.set("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", { desc = "Lspsaga peek definition" }),
      vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Lspsaga rename varibles" }),
      -- :Lspsaga project_replace old_name new_name
      ui = {
        -- code_action = "your icon",
        border = "rounded", -- see :h nvim_open_win
      },
      symbol_in_winbar = {
        hide_keyword = false,
        show_file = true,
      },
      definition = {
        width = 0.7, -- defines float window width
        height = 0.6, -- defines float window height
      },
      finder = {
        keys = {
          shuttle = "<C-l>",
        },
        max_height = 0.8,
        -- x_height of the finder window (float layout),
        left_width = 0.3,
        -- Width of the left finder window (float layout),
        right_width = 0.5,
        --  Width of the right finder window (float layout),
        default = "def+ref+imp",

        silent = false,
        -- If it’s true, it will disable show the no response message
      },
      hover = {
        -- Default options in hover section:
        -- max_width = 0.9 defines float window width
        -- max_height = 0.8 defines float window height
        open_link = "<CR>", -- key for opening links
        -- open_cmd = '!chrome' cmd for opening links
      },

      implement = {
        -- Default options in implement section:
        -- enable = true enable
        -- sign = true show sign in status column
        -- virtual_text = true show virtual text at the end of line
        -- priority = 100 sign priority
      },
      outline = {
        -- Default options of outline section:
        -- win_position = 'right' window position
        win_width = 40, -- window width
        -- auto_preview = true auto preview when cursor moved in outline window
        -- detail = true show detail
        -- auto_close = true auto close itself when outline window is last window
        -- close_after_jump = false close after jump
        -- layout = 'normal' float or normal default is normal when is float above options will ignored
        -- max_height = 0.5 height of outline float layout
        -- left_width = 0.3 width of outline float layout left window
        keys = {
          toggle_or_jump = "<CR>",
        },
      },
    }
    dofile(vim.g.base46_cache .. "lspsaga")
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter", -- optional
    "nvim-tree/nvim-web-devicons", -- optional
  },
}
