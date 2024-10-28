-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig

return {

	base46 = {
		theme = "rosepine",

		hl_override = {
			Comment = { italic = true },
			["@comment"] = { italic = true },

      St_NormalMode = { bg = "#ebbcba" },
      St_NormalModeSep = { fg = "#ebbcba" },
      St_InsertMode = { bg = "#c4a7e7" },
      St_InsertModeSep = { fg = "#c4a7e7" },
      St_VisualMode = { bg = "#9ccfd8" },
      St_VisualModeSep = { fg = "#9ccfd8" },
      St_ReplaceMode = { bg = "#f6c177" },
      St_ReplaceModeSep = { fg = "#f6c177" },
		},
	},

	ui = {
		telescope = {
			style = "bordered",
		},
		statusline = {
			separator_style = "round",
		},
	},

  nvdash = {
    load_on_startup = true,
  },

	colorify = {
		mode = "bg",
	},
}
