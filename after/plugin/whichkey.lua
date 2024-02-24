local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
    d = { "Delete to void" },
	f = {
		name = "file", -- optional group name
		f = { "Find File" }, -- create a binding with label
		F = { "Format File" }, -- create a binding with label
		g = { "Live grep" }, -- create a binding with label
		b = { "Buffers" }, -- create a binding with label
		e = { "Explore" }, -- create a binding with label
		["1"] = "which_key_ignore",  -- special label to hide it in the popup
	},
	h = {
		name = "harpoon",
		["1"] = { "Goto file 1" },
		["2"] = { "Goto file 2" },
		["3"] = { "Goto file 3" },
		["4"] = { "Goto file 4" },
		a = { "Add file" },
		m = { "Quick Menu" },
	},
	p = {
		name = "project", -- optional group name
	    b = { "Browser" },
        l = { "List projects" },
        p = { "Paste without overriding buffer" },
        r = { "Restore last session" },
		s = { "Search" },
	},
    s = { "Search and replace selection"},
    t = {
        name = "toggle",
        c = "Calendar",
        g = "Lazy Git",
        s = "Symbol-outline",
        t = "Terminal",
	    u = "Undo tree",
    },
    y = { "Yank to clipboard" },
    Y = { "Yank to end of line to clipboard" },
}, { prefix = "<leader>" } )
