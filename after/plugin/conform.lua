require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        rust = { "rustfmt" },
    },
})

vim.keymap.set("n", "<leader>fF", [[<cmd>lua require("conform").format()<CR>]])
