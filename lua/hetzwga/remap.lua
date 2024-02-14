
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>tr", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-s>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").startvimwithme()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").stopvimwithme()
end)
-- 
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dp]])

-- next greatest remap ever : asbjornhaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- this is going to get me cancelled
vim.keymap.set("i", "<c-c>", "<esc>")

-- vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<c-f>", "<cmd>silent !tmux neww tmux-sessionizer<cr>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<c-k>", "<cmd>cnext<cr>zz")
vim.keymap.set("n", "<c-j>", "<cmd>cprev<cr>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")


vim.keymap.set("n", "<leader>s", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/hetzwga/packer.lua<cr>");
vim.keymap.set("n", "<leader>mr", "<cmd>cellularautomaton make_it_rain<cr>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n","<leader>vs", function()
    vim.cmd("vsplit")
end)

vim.keymap.set("n","<leader>hs", function()
    vim.cmd("split")
end)
vim.keymap.set("n","<leader>dy", function()
    vim.cmd("Copilot enable")
end)
vim.keymap.set("n","<leader>d;", function()
    vim.cmd("Copilot disable")
end)
vim.keymap.set("n","<leader>pv", function()
    vim.cmd("TroubleToggle")
end)

