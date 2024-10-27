require("nvchad.options")

-- add yours here!

vim.filetype.add({
	extension = { rasi = "rasi" },
	pattern = {
		[".*/hypr/.*%.conf"] = "hyprlang",
		[".*/kitty/*.conf"] = "bash",
		[".*/mako/config"] = "dosini",
		[".*/tofi/config"] = "dosini",
	},
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
