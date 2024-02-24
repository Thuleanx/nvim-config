local lsp_zero = require('lsp-zero')
local lsp_config = require('lspconfig')

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		['<C-y>'] = cmp.mapping.confirm({select = true}),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),
	})
})

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})

    if (client.language == "rust") then
        vim.keymap.set("n", "<F4>", ":!cargo build<CR>cargo run<CR>")
    end
end)

-- here you can setup the language servers 
