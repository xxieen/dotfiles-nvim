require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- neotree
map("n", "<C-n>", "<cmd>Neotree toggle=true reveal=true<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>Neotree toggle=true reveal=true<CR>", { desc = "nvimtree toggle window" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>"

--terminal

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

-- map({ "n", "t" }, "<F5>", function()
--   require("nvchad.term").runner {
--     id = "floatTerm",
--     pos = "float",
--
--     cmd = function()
--       local file = vim.fn.expand "%"
--
--       local ft_cmds = {
--         python = "python3 " .. file,
--         cpp = "clear && g++ -o out " .. file .. " && ./out",
--       }
--
--       return ft_cmds[vim.bo.ft]
--     end,
--   }
-- end, { desc = "Terminal " })
--buffer

map("n", "<S-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Disable mappings
local nomap = vim.keymap.del
nomap("n", "<tab>")
nomap("n", "<S-tab>")
nomap("n", "<leader>rn")
-- Tab
map("n", "<leader>tn", ":tabn<CR>", { desc = "Tab Next " })
map("n", "<leader>tp", ":tabp<CR>", { desc = "Tab Prev " })
map("n", "<leader>tx", ":tabc<CR>", { desc = "Tab Close " })
-- telescope
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "telescope Find todos" })
