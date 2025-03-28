vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Magic
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Start LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Editor
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

-- Diagnostic
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
