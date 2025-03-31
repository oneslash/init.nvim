-- General
vim.opt.confirm = true
vim.opt.guicursor = "i:block"

-- Leader Map
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- UI
vim.g.netrw_banner = 0
vim.o.termguicolors = true
vim.opt.relativenumber = true
vim.wo.number = true
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.inccommand = 'split'
vim.cmd.colorscheme('rose-pine')

-- Editor
vim.o.breakindent = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.linespace = 4
vim.o.completeopt = 'menuone,noselect'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Clipboard
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Undo File
vim.opt.undofile = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Misc
vim.o.mouse = 'a'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
