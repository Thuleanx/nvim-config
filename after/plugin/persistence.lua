require("persistence").setup({})

vim.keymap.set("n", "<leader>pr", [[<cmd>lua require("persistence").load()<CR>]], {})

