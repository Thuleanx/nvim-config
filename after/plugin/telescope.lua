local builtin = require("telescope.builtin")
local project_actions = require("telescope._extensions.project.actions")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local telescope = require("telescope")
telescope.setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key",
			},
        },
        file_ignore_patterns = {
            "node_modules",
            ".git"
        }
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
		project = {
			hidden_files = false, -- default: false
			theme = "dropdown",
			order_by = "asc",
			search_by = "title",
			sync_with_nvim_tree = true, -- default false
			-- default for on_project_selected = find project files
			on_project_selected = function(prompt_bufnr)
				-- Do anything you want in here. For example:
				project_actions.change_working_directory(prompt_bufnr, false)
			end,
		},
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
				},
			},
		},
	},
})

require("telescope").load_extension("file_browser")
require("telescope").load_extension("project")

vim.keymap.set("n", "<leader>pl", telescope.extensions.project.project, {})
vim.keymap.set("n", "<leader>pb", telescope.extensions.file_browser.file_browser, {})
