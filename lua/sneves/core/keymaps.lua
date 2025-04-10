-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-----------------------------
------ General Keymaps ------
-----------------------------
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
-- split
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Harpoon Keymaps
keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Add file to harpoon" })
keymap.set(
	"n",
	"<leader>hh",
	"<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
	{ desc = "Toggle harpoon menu" }
)
keymap.set("n", "<leader>hj", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { desc = "Next harpoon file" })
keymap.set("n", "<leader>hk", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { desc = "Previous harpoon file" })

-- -- Navigate to specific harpoon file
keymap.set("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Harpoon file 1" })
keymap.set("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Harpoon file 2" })
keymap.set("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Harpoon file 3" })
keymap.set("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Harpoon file 4" })
