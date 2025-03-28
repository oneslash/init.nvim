return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<C-a>", function() harpoon:list():add() end)
		vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
		vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
		vim.keymap.set("n", "<C-S-1>", function() harpoon:list():select(1) end)
		vim.keymap.set("n", "<C-S-2>", function() harpoon:list():select(2) end)
		vim.keymap.set("n", "<C-S-3>", function() harpoon:list():select(3) end)
		vim.keymap.set("n", "<C-S-4>", function() harpoon:list():select(4) end)
	end,
}
