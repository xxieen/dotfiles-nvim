require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- neotree
map("n", "<C-n>", "<cmd>Neotree toggle=true reveal=true<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>Neotree toggle=true reveal=true<CR>", { desc = "nvimtree toggle window" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--terminal
map({ "n" }, "<leader>i", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })
map({ "n" }, "<leader>v", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "terminal toggleable vertical term" })

map({ "n" }, "<leader>h", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })
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

-- Trouble
map("n", "<leader>tn", ":tabn<cr>", { desc = "Tab Next " })
map("n", "<leader>tp", ":tabp<cr>", { desc = "Tab Prev " })
map("n", "<leader>tx", ":tabc<cr>", { desc = "Tab Close " })
-- telescope
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "telescope Find todos" })
