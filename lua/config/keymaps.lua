vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Magic
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Editor
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

-- Diagnostic
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end,
    { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end,
    { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
