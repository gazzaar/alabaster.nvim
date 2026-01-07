vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "alabaster"

local theme
---@diagnostic disable: undefined-global
if vim.o.background == "dark" then
	-- terminal colors (Gruvbox Material)
	vim.g.terminal_color_0 = "#32302F" -- bg1
	vim.g.terminal_color_1 = "#EA6962" -- red
	vim.g.terminal_color_2 = "#A9B665" -- green
	vim.g.terminal_color_3 = "#D8A657" -- yellow
	vim.g.terminal_color_4 = "#7DAEA3" -- blue/aqua
	vim.g.terminal_color_5 = "#D3869B" -- purple
	vim.g.terminal_color_6 = "#89B482" -- aqua (alternative)
	vim.g.terminal_color_7 = "#D4BE98" -- fg0
	vim.g.terminal_color_8 = "#928374" -- grey1
	vim.g.terminal_color_9 = "#EA6962" -- bright red
	vim.g.terminal_color_10 = "#A9B665" -- bright green
	vim.g.terminal_color_11 = "#D8A657" -- bright yellow
	vim.g.terminal_color_12 = "#7DAEA3" -- bright blue
	vim.g.terminal_color_13 = "#D3869B" -- bright purple
	vim.g.terminal_color_14 = "#89B482" -- bright aqua
	vim.g.terminal_color_15 = "#DDC7A1" -- fg1

	-- colors
	local bg = "#282828" -- bg0
	local fg = "#D4BE98" -- fg0 (main foreground)
	local punct_fg = "#928374" -- grey1 (punctuation)
	local def_fg = "#7DAEA3" -- aqua (definitions/functions)
	local const_fg = "#D3869B" -- purple (constants)
	local active = "#D8A657" -- yellow (active/highlighted)
	local string_fg = "#A9B665" -- green (strings)
	local darker_fg = "#928374" -- grey1 (dimmed text)
	local diffadd = "#A9B665" -- green (additions)
	local diffdelete = "#EA6962" -- red (deletions)
	local diffchange = "#D8A657" -- yellow (changes)
	local statusline = "#32302F" -- bg1 (statusline background)
	local comment = "#928374" -- grey1 (comments - more typical)
	local dim_comment = "#7C6F64" -- grey0 (dimmed comments)
	local mistake = {
		fg = "#EA6962", -- red
		bg = "#402120", -- bg_diff_red
	}
	local error = "#EA6962" -- red
	local warn = "#D8A657" -- yellow
	local hint = "#7DAEA3" -- aqua
	local info = "#A9B665" -- green
	local ansi = {
		black = "#282828", -- bg0
		blue = "#7DAEA3", -- aqua
		brightyellow = "#D8A657", -- yellow
		cyan = "#89B482", -- aqua (alternative)
		green = "#A9B665", -- green
		magenta = "#D3869B", -- purple
		red = "#EA6962", -- red
		white = fg, -- fg0
		yellow = "#D8A657", -- yellow
	}
	local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
	local pmenu_bg = "#32302F" -- bg1 (popup menu background)
	local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
	local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#32302F" } -- bg1
		or {
			bg = float_bg,
			fg = float_bg,
		}
	theme = {
		Comment = { fg = comment_fg },
		ColorColumn = { bg = "#3c3836" },
		Conceal = { fg = "#b0b0b0" },
		Cursor = { bg = active, fg = "#000000" },
		lCursor = { bg = active, fg = "#000000" }, -- language mapping cursor
		CursorIM = { bg = active, fg = "#000000" },
		CursorColumn = { bg = "#3c3836" },
		CursorLine = { bg = "#3c3836" },
		Directory = { fg = ansi.blue },
		DiffAdd = { bg = "#244032", fg = "#56d364" },
		DiffDelete = { bg = "#462c32", fg = "#f85149" },
		DiffText = { fg = "#282828", bg = "#D8A657" }, -- bold yellow highlight for exact changes
		DiffChange = { bg = "#4F422E", fg = "#D8A657" }, -- subtle yellow background for changed lines
		EndOfBuffer = { fg = "#504945" },
		-- TermCursor   { }, -- cursor in a focused terminal
		TermCursorNC = { fg = bg, bg = fg },
		ErrorMsg = { fg = error, bg = mistake.bg },
		VertSplit = { fg = "#504945" },
		Folded = { bg = "#3c3836", fg = "#928374" },
		FoldColumn = { bg = bg, fg = "#928374" },
		SignColumn = {},
		IncSearch = { bg = ansi.yellow, fg = bg },
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr = { fg = "#928374" },
		CursorLineNr = { fg = ansi.blue, bold = 1 },
		MatchParen = { underline = 1, sp = active },
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = ansi.green, bold = 1 },
		NonText = { fg = "#928374" },
		Normal = { bg = bg, fg = fg },
		NormalFloat = { bg = float_bg },
		-- NormalNC     { }, -- normal text in non-current windows
		FloatBorder = floatborder,
		Pmenu = { bg = pmenu_bg },
		PmenuSel = { bg = "#504945" },
		PmenuSbar = { bg = "#3c3836" },
		PmenuThumb = { bg = "#504945" },
		Question = { fg = diffadd },
		QuickFixLine = { bg = "#3c3836" },
		Search = { bg = "#504945" },
		SpecialKey = { fg = ansi.cyan },
		SpellBad = { undercurl = 1, sp = ansi.red },
		SpellCap = { undercurl = 1, sp = ansi.blue },
		SpellLocal = { undercurl = 1, sp = ansi.cyan },
		SpellRare = { undercurl = 1, sp = ansi.magenta },
		StatusLine = { bg = statusline, fg = fg },
		StatusLineNC = { bg = statusline, fg = "#928374" },
		TabLine = { bg = statusline, fg = "#928374" },
		TabLineFill = { bg = statusline },
		TabLineSel = { bg = statusline, fg = ansi.blue },
		Title = { fg = const_fg },
		Visual = { bg = "#504945" },
		VisualNOS = { bg = "#504945" },
		WarningMsg = { fg = "#e1ad4c" },
		WildMenu = { bg = "#504945" },
		WinBar = { bg = bg, fg = ansi.white, bold = true },
		WinBarNC = { bg = bg, fg = "#928374" },

		--- SYNTAX I: TS groups link to these
		Constant = { fg = const_fg },
		String = { fg = string_fg },
		Character = { fg = const_fg },
		Number = { fg = const_fg },
		Boolean = { fg = const_fg },
		Float = { fg = const_fg },
		Operator = { fg = punct_fg },

		--- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
		Identifier = { fg = ansi.white },
		Function = { fg = def_fg },
		Statement = { fg = ansi.white },
		Conditional = { fg = ansi.white },
		Repeat = { fg = ansi.white },
		Label = { fg = def_fg },
		Keyword = { fg = ansi.white },
		Exception = { fg = ansi.white },
		PreProc = { fg = ansi.white },
		Include = { fg = ansi.white },
		Define = { fg = ansi.white },
		Macro = { fg = ansi.white },
		PreCondit = { fg = ansi.white },
		Type = { fg = ansi.white },
		StorageClass = { fg = ansi.white },
		Structure = { fg = def_fg },
		Typedef = { fg = def_fg },

		Special = { fg = ansi.yellow },
		-- TODO better color than diffchange, try reddish
		-- SpecialChar = { fg = diffchange }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { },
		SpecialComment = { bg = "#3c3836", fg = ansi.blue },
		-- use gruvbox-material diff blue for current debug line
		debugPc = { bg = "#0E363E" },
		debugBreakpoint = { bg = "#b33229" },
		helpHyperTextJump = { fg = ansi.magenta },
		helpSectionDelim = { fg = ansi.magenta },
		helpExample = { fg = ansi.cyan },
		helpCommand = { fg = ansi.cyan },
		helpHeadline = { fg = ansi.blue },
		helpHeader = { fg = ansi.magenta },

		Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
		Italic = { italic = 1 },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { bg = mistake.bg, fg = mistake.fg },

		Todo = { bg = "#d0d058", fg = bg },

		--- Diagnostic
		LspReferenceText = { bg = "#3c3836" },
		LspReferenceRead = { bg = "#3c3836" },
		LspReferenceWrite = { bg = "#3c3836", underline = 1, sp = active },
		LspCodeLens = { fg = "#928374" },
		LspCodeLensSeparator = { fg = "#928374" },

		--- Diagnostic
		DiagnosticError = { fg = error },
		DiagnosticWarn = { fg = warn },
		DiagnosticHint = { fg = hint },
		DiagnosticInfo = { fg = info },
		-- virtual text diagnostics use the material diff/visual backgrounds
		DiagnosticVirtualTextError = { bg = "#402120", fg = "#EA6962" }, -- bg_diff_red / red
		DiagnosticVirtualTextWarn = { bg = "#4F422E", fg = "#D8A657" }, -- bg_visual_yellow / yellow
		DiagnosticVirtualTextHint = { bg = "#374141", fg = "#89B482" }, -- bg_visual_blue / aqua
		DiagnosticVirtualTextInfo = { bg = "#3B4439", fg = "#A9B665" }, -- bg_visual_green / green

		--- Treesitter
		TSAttribute = {},
		TSConstructor = { fg = ansi.white },
		TSConditional = { fg = ansi.white },
		TSConstBuiltin = { fg = const_fg },
		TSConstMacro = { fg = ansi.white },
		TSError = { bg = mistake.bg, fg = mistake.fg },
		TSException = { fg = ansi.white },
		TSField = { fg = ansi.white },
		TSFunction = { fg = def_fg },
		TSFuncBuiltin = { fg = def_fg },
		TSFuncMacro = { fg = def_fg },
		TSKeyword = { fg = ansi.white },
		TSKeywordFunction = { fg = ansi.white },
		TSLabel = { fg = ansi.white },
		TSMethod = { fg = def_fg },
		TSNamespace = { fg = ansi.white },
		TSNone = { fg = const_fg },
		TSParameter = { fg = ansi.white },
		TSParameterReference = { fg = ansi.white },
		TSProperty = { fg = ansi.white },
		TSPunctDelimiter = { fg = punct_fg },
		TSPunctBracket = { fg = "#928374" },
		TSPunctSpecial = { fg = punct_fg },
		TSRepeat = { fg = ansi.white },
		TSString = { fg = string_fg },
		TSStringRegex = { bg = "#3c3836", fg = const_fg },
		TSStringEscape = { bg = "#3c3836", fg = const_fg },
		TSSymbol = {},
		TSType = { fg = ansi.white },
		TSTypeBuiltin = { fg = ansi.white },
		TSVariable = { fg = ansi.white },
		TSVariableBuiltin = { fg = ansi.white },
		TSTag = { fg = ansi.white },
		TSTagDelimiter = { fg = punct_fg },
		TSText = { fg = ansi.white },
		["@attribute"] = {},
		["@constructor"] = { fg = ansi.white },
		["@conditional"] = { fg = ansi.white },
		["@constant.builtin"] = { fg = const_fg },
		["@constant.macro"] = { fg = ansi.white },
		["@error"] = { bg = mistake.bg, fg = mistake.fg },
		["@exception"] = { fg = ansi.white },
		["@field"] = { fg = ansi.white },
		["@function"] = { fg = def_fg },
		["@function.builtin"] = { fg = def_fg },
		["@function.macro"] = { fg = def_fg },
		["@keyword"] = { fg = ansi.white },
		["@keyword.function"] = { fg = ansi.white },
		["@keyword.operator"] = { fg = punct_fg },
		["@label"] = { fg = ansi.white },
		["@method"] = { fg = def_fg },
		["@module"] = { fg = ansi.white },
		["@namespace"] = { fg = ansi.white },
		["@none"] = { fg = const_fg },
		["@parameter"] = { fg = ansi.white },
		["@parameter.reference"] = { fg = ansi.white },
		["@property"] = { fg = ansi.white },
		["@punctuation.delimiter"] = { fg = punct_fg },
		["@punctuation.bracket"] = { fg = "#928374" },
		["@punctuation.special"] = { fg = punct_fg },
		["@repeat"] = { fg = ansi.white },
		["@string"] = { fg = string_fg },
		["@string.regex"] = { bg = "#3c3836", fg = const_fg },
		["@string.escape"] = { bg = "#3c3836", fg = const_fg },
		["@symbol"] = {},
		["@type"] = { fg = ansi.white },
		["@type.builtin"] = { fg = ansi.white },
		["@variable"] = { fg = ansi.white },
		["@variable.builtin"] = { fg = ansi.white },
		["@tag"] = { fg = ansi.white },
		["@tag.delimiter"] = { fg = punct_fg },
		["@text"] = { fg = ansi.white },
		["@text.note"] = { bg = "#3c3836", fg = ansi.blue },
		["@text.warning"] = { bg = "#d0d058", fg = bg },

		--- Theme specific
		["@AlabasterBase"] = { fg = ansi.white },
		["@AlabasterConstant"] = { fg = const_fg },
		["@AlabasterDefinition"] = { fg = def_fg },
		["@AlabasterPunct"] = { fg = punct_fg },
		["@AlabasterString"] = { fg = string_fg },
		["@AlabasterHashbang"] = { fg = dim_comment },
		--- Gitsigns
		GitSignsAdd = { fg = "#689d6a" },
		GitSignsChange = { fg = diffchange },
		GitSignsDelete = { fg = diffdelete },
		--- Telescope
		TelescopeBorder = { fg = "#504945" },
		TelescopeMatching = { fg = "#f09942" },
		TelescopeMultiSelection = { fg = ansi.magenta },
		TelescopePromptPrefix = { fg = ansi.blue },
		TelescopeSelectionCaret = { fg = mistake.fg },
		TelescopeTitle = { fg = ansi.brightyellow },
		TelescopeResultsTitle = { fg = ansi.yellow },
		--- fzf-lua
		FzfLuaBorder = { fg = "#504945" },
		--- mini.nvim
		MiniPickMatchCurrent = { fg = "#f09942" },
		--- Neogit
		NeogitPopupActionDisabled = { fg = darker_fg },
		NeogitPopupActionKey = { fg = ansi.magenta },
		NeogitPopupOptionDisabled = { fg = darker_fg },
		NeogitPopupOptionKey = { fg = ansi.blue },
		NeogitPopupSwitchDisabled = { fg = darker_fg },
		NeogitPopupSwitchEnabled = { fg = ansi.cyan },
		NeogitPopupSwitchKey = { fg = ansi.magenta },
		--- Fugitive
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },
		--- Startify
		StartifyBracket = { fg = darker_fg },
		StartifyFile = { fg = ansi.white },
		StartifySection = { fg = ansi.green },
		StartifySlash = { fg = "#4e6e75" },
		StartifyPath = { fg = "#4e6e75" },
		--- Statusline
		StatuslineAdd = { fg = diffadd, bg = statusline }, -- #A9B665 on #32302F
		StatuslineErr = { fg = error, bg = statusline }, -- #EA6962 on #32302F
		StatuslineHint = { fg = hint, bg = statusline }, -- #7DAEA3 on #32302F
		StatuslineInfo = { fg = info, bg = statusline }, -- #A9B665 on #32302F
		StatuslineWarn = { fg = warn, bg = statusline }, -- #D8A657 on #32302F
		StatuslineBlue = { fg = ansi.blue, bg = statusline }, -- #7DAEA3 on #32302F
		StatuslineRed = { fg = ansi.red, bg = statusline }, -- #EA6962 on #32302F
		StatuslineGreen = { fg = ansi.green, bg = statusline }, -- #A9B665 on #32302F
		StatuslineCyan = { fg = ansi.cyan, bg = statusline }, -- #89B482 on #32302F
		StatuslineMagenta = { fg = ansi.magenta, bg = statusline }, -- #D3869B on #32302F
		--- ALE
		ALEWarningSign = { fg = warn },
		--- vim-matchup
		MatchupVirtualText = { fg = ansi.yellow },
		--- For `highlight link`
		AlabasterBlack = { fg = ansi.black },
		AlabasterBlue = { fg = ansi.blue },
		AlabasterBrightYellow = { fg = ansi.brightyellow },
		AlabasterCyan = { fg = ansi.cyan },
		AlabasterGreen = { fg = ansi.green },
		AlabasterDarkGreen = { fg = "#689d6a" },
		AlabasterMagenta = { fg = ansi.magenta },
		AlabasterRed = { fg = ansi.red },
		AlabasterWhite = { fg = ansi.white },
		AlabasterYellow = { fg = ansi.yellow },
		--- Hop
		HopNextKey = { fg = ansi.brightyellow },
		HopNextKey1 = { fg = ansi.cyan },
		HopNextKey2 = { fg = "#297567" },
		HopUnmatched = { fg = "#3d3d3d" },
		--- Lightspeed
		LightspeedGreyWash = { fg = "#3d3d3d" },
		--- checkhealth
		healthSuccess = { fg = ansi.green, bg = bg },
		--- cmp
		CmpItemMenuDefault = { fg = ansi.magenta },
		--- nvim-ts-rainbow
		rainbowcol1 = { fg = ansi.yellow },
		rainbowcol2 = { fg = ansi.magenta },
		rainbowcol3 = { fg = ansi.blue },
		rainbowcol4 = { fg = ansi.green },
		rainbowcol5 = { fg = ansi.brightyellow },
		rainbowcol6 = { fg = ansi.red },
		rainbowcol7 = { fg = ansi.cyan },
		--- Iswap
		ISwapSnipe = { bg = ansi.yellow, fg = bg },
		ISwapGrey = { fg = "#3d3d3d" },
		--- vim-dadbod-ui
		dbui_help = { fg = dim_comment },
		dbui_connection_source = { fg = dim_comment },
		--- nvim-dap-virtual-text
		NvimDapVirtualText = { bg = "#3c3836", fg = ansi.cyan },
		--- Noice
		NoiceCmdlineIcon = { link = "AlabasterDarkGreen" },
		NoiceCmdlinePopupBorder = { link = "AlabasterDarkGreen" },
		NoiceConfirmBorder = { link = "AlabasterDarkGreen" },
		NoiceCmdlinePopupBorderCmdline = { link = "AlabasterDarkGreen" },
		NoiceCmdlineIconCmdline = { link = "AlabasterDarkGreen" },
		NoiceCmdlinePopupBorderFilter = { link = "AlabasterDarkGreen" },
		NoiceCmdlineIconFilter = { link = "AlabasterDarkGreen" },
		NoiceCmdlinePopupBorderLua = { link = "AlabasterDarkGreen" },
		NoiceCmdlineIconLua = { link = "AlabasterDarkGreen" },
		NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
		NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
		-- Languages
		--- asm
		asmDirective = { fg = dim_comment },
		nasmLabel = { link = "@AlabasterDefinition" },

		["@lsp.mod.declaration"] = { fg = fg },
		["@lsp.type.enumMember"] = { fg = fg },
		["@lsp.type.function"] = { fg = fg },
		["@lsp.type.method"] = { fg = fg },
		["@lsp.type.selfKeyword"] = { fg = fg },
		["@lsp.typemod.class.declaration"] = { fg = def_fg },
		["@lsp.typemod.class.definition"] = { fg = def_fg },
		["@lsp.typemod.enum.declaration"] = { fg = def_fg },
		["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg },
		["@lsp.typemod.function.declaration"] = { fg = def_fg },
		["@lsp.typemod.function.definition"] = { fg = def_fg },
		["@lsp.typemod.macro.declaration"] = { fg = def_fg },
		["@lsp.typemod.method.declaration"] = { fg = def_fg },
		["@lsp.typemod.method.definition"] = { fg = def_fg },
		["@lsp.typemod.selfKeyword"] = { fg = fg },
		["@lsp.typemod.struct.declaration"] = { fg = def_fg },
		["@lsp.typemod.type.declaration"] = { fg = def_fg },
	}
else
	-- terminal colors
	vim.g.terminal_color_0 = "#000000"
	vim.g.terminal_color_1 = "#aa3731"
	vim.g.terminal_color_2 = "#448c27"
	vim.g.terminal_color_3 = "#cb9000"
	vim.g.terminal_color_4 = "#325cc0"
	vim.g.terminal_color_5 = "#7a3e9d"
	vim.g.terminal_color_6 = "#0083b2"
	vim.g.terminal_color_7 = "#f7f7f7"
	vim.g.terminal_color_8 = "#777777"
	vim.g.terminal_color_9 = "#f05050"
	vim.g.terminal_color_10 = "#60cb00"
	vim.g.terminal_color_11 = "#ffbc5d"
	vim.g.terminal_color_12 = "#007acc"
	vim.g.terminal_color_13 = "#e64ce6"
	vim.g.terminal_color_14 = "#00aacb"
	vim.g.terminal_color_15 = "#f7f7f7"

	-- colors
	local bg = "#f7f7f7"
	local fg = "#000000"
	local punct_fg = "#777777"
	local def_fg = "#325cc0"
	local const_fg = "#7a3e9d"
	local active = "#ffbc5d"
	local active_blue = "#007acc"
	local string_fg = "#448c27"
	local darker_fg = "#928374"
	local diffadd = "#284918"
	local diffdelete = "#B40600"
	local diffchange = "#ec8013"
	local statusline = "#c9c9c9"
	local comment = "#aa3731"
	local dim_comment = "#928374"
	local mistake = {
		fg = "#c33c33",
		bg = "#f8b28f",
	}
	local ansi = {
		black = "#000000",
		blue = "#325cc0",
		brightyellow = "#ffbc5d",
		cyan = "#0083b2",
		green = "#448c27",
		magenta = "#7a3e9d",
		red = "#aa3731",
		white = "#f7f7f7",
		yellow = "#cb9000",
	}
	local error = "#d13e23"
	local warn = "#BC7500"
	local hint = ansi.blue
	local info = "#278C00"
	local comment_fg = vim.g.alabaster_dim_comments and dim_comment or comment
	local pmenu_bg = "#e7e7e7"
	local float_bg = vim.g.alabaster_floatborder and bg or pmenu_bg
	local floatborder = vim.g.alabaster_floatborder and { bg = bg, fg = "#999999" }
		or {
			bg = float_bg,
			fg = float_bg,
		}
	theme = {
		Comment = { fg = comment_fg },
		ColorColumn = { bg = "#E2EEEE" },
		Conceal = { fg = "#b0b0b0" },
		Cursor = { bg = "#007acc", fg = "#bfdbfe" },
		-- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = "#E2EEEE" },
		CursorLine = { bg = "#E2EEEE" },
		Directory = { fg = ansi.blue },
		DiffAdd = { bg = "#ADFFB7", fg = "#0A7816" },
		DiffDelete = { bg = "#F8B28F", fg = "#872C28" },
		DiffText = { fg = "#282828", bg = "#D8A657" }, -- exact changes
		DiffChange = { bg = "#32302F", fg = "#D4BE98" },
		EndOfBuffer = { fg = "#b6b6b6" },
		-- TermCursor   { }, -- cursor in a focused terminal
		TermCursorNC = { fg = bg, bg = fg },
		ErrorMsg = { fg = error, bg = mistake.bg },
		VertSplit = { fg = "#abbdc0" },
		Folded = { bg = "#dddddd", fg = "#7d7d7d" },
		FoldColumn = { bg = bg, fg = "#4d4d4d" },
		SignColumn = {},
		IncSearch = { bg = active, fg = fg },
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr = { fg = "#7d7c7c" },
		CursorLineNr = { fg = ansi.blue, bold = 1 },
		MatchParen = { underline = 1, sp = active },
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = ansi.green, bold = 1 },
		NonText = { fg = "#928374" },
		Normal = { bg = bg, fg = fg },
		NormalFloat = { bg = float_bg },
		-- NormalNC     { }, -- normal text in non-current windows
		FloatBorder = floatborder,
		Pmenu = { bg = pmenu_bg },
		PmenuSel = { bg = "#c7c7c7" },
		PmenuSbar = { bg = "#777777" },
		PmenuThumb = { bg = "#333333" },
		Question = { fg = ansi.green },
		QuickFixLine = { bg = "#E2EEEE" },
		Search = { bg = "#fae9b7", fg = fg },
		SpecialKey = { fg = ansi.cyan },
		SpellBad = { undercurl = 1, sp = ansi.red },
		SpellCap = { undercurl = 1, sp = ansi.blue },
		SpellLocal = { undercurl = 1, sp = ansi.cyan },
		SpellRare = { undercurl = 1, sp = ansi.magenta },
		StatusLine = { bg = statusline, fg = fg }, -- #32302F bg, #D4BE98 fg (active)
		StatusLineNC = { bg = statusline, fg = "#928374" }, -- #32302F bg, grey1 fg (inactive)
		TabLine = { bg = statusline, fg = "#7d7d7d" },
		TabLineFill = { bg = statusline },
		TabLineSel = { bg = statusline, fg = ansi.blue },
		Title = { fg = const_fg },
		Visual = { bg = "#bfdbfe" },
		VisualNOS = { bg = "#bfdbfe" },
		WarningMsg = { fg = "#e1ad4c" },
		WildMenu = { bg = "#999999" },
		WinBar = { bg = bg, fg = ansi.black, bold = true },
		WinBarNC = { bg = bg, fg = "#7d7d7d" },

		--- SYNTAX I: TS groups link to these
		Constant = { fg = const_fg },
		String = { fg = string_fg },
		Character = { fg = const_fg },
		Number = { fg = const_fg },
		Boolean = { fg = const_fg },
		Float = { fg = const_fg },
		Operator = { fg = punct_fg },

		--- SYNTAX II: TS groups have their own definition, the below are defined to have somewhat working hl w/o treesitter
		Identifier = { fg = ansi.black },
		Function = { fg = def_fg },
		Statement = { fg = ansi.black },
		Conditional = { fg = ansi.black },
		Repeat = { fg = ansi.black },
		Label = { fg = def_fg },
		Keyword = { fg = ansi.black },
		Exception = { fg = ansi.black },
		PreProc = { fg = ansi.black },
		Include = { fg = ansi.black },
		Define = { fg = ansi.black },
		Macro = { fg = ansi.black },
		PreCondit = { fg = ansi.black },
		Type = { fg = ansi.black },
		StorageClass = { fg = ansi.black },
		Structure = { fg = def_fg },
		Typedef = { fg = def_fg },

		Special = { fg = ansi.yellow },
		-- TODO better color than diffchange, try reddish
		-- SpecialChar = { fg = diffchange }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		-- Delimiter      { },
		SpecialComment = { bg = "#FFDEAA", fg = ansi.blue },
		debugPc = { bg = "#C7C7EE" },
		debugBreakpoint = { bg = "#F8B28F" },
		helpHyperTextJump = { fg = ansi.magenta },
		helpSectionDelim = { fg = ansi.magenta },
		helpExample = { fg = ansi.cyan },
		helpCommand = { fg = ansi.cyan },
		helpHeadline = { fg = ansi.blue },
		helpHeader = { fg = ansi.magenta },

		Underlined = { underline = 1 }, -- (preferred) text that stands out, HTML links
		Italic = { italic = 1 },

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { bg = mistake.bg, fg = mistake.fg },

		Todo = { bg = "#FFDEAA", fg = ansi.blue },

		--- Diagnostic
		LspReferenceText = { bg = "#dadada" },
		LspReferenceRdad = { bg = "#dadada" },
		LspReferenceWrite = { bg = "#dadada", underline = 1, sp = active_blue },
		LspCodeLens = { fg = "#999999" },
		LspCodeLensSeparator = { fg = "#999999" },

		--- Diagnostic
		DiagnosticError = { fg = error },
		DiagnosticWarn = { fg = warn },
		DiagnosticHint = { fg = hint },
		DiagnosticInfo = { fg = info },
		DiagnosticVirtualTextError = { bg = "#F8B28F", fg = "#411414" },
		DiagnosticVirtualTextWarn = { bg = "#fff987", fg = fg },
		DiagnosticVirtualTextHint = { fg = "#0F171D", bg = "#C3D0DA" },
		DiagnosticVirtualTextInfo = { bg = "#ADFFB7", fg = "#042F09" },

		--- Treesitter
		TSAttribute = {},
		TSConstructor = { fg = ansi.black },
		TSConditional = { fg = ansi.black },
		TSConstBuiltin = { fg = const_fg },
		TSConstMacro = { fg = ansi.black },
		TSError = { bg = mistake.bg, fg = mistake.fg },
		TSException = { fg = ansi.black },
		TSField = { fg = ansi.black },
		TSFunction = { fg = ansi.black },
		TSFuncBuiltin = { fg = ansi.black },
		TSFuncMacro = { fg = ansi.black },
		TSKeyword = { fg = ansi.black },
		TSKeywordFunction = { fg = ansi.black },
		TSLabel = { fg = ansi.black },
		TSMethod = { fg = ansi.black },
		TSNamespace = { fg = ansi.black },
		TSNone = { fg = const_fg },
		TSParameter = { fg = ansi.black },
		TSParameterReference = { fg = ansi.black },
		TSProperty = { fg = ansi.black },
		TSPunctDelimiter = { fg = punct_fg },
		TSPunctBracket = { fg = punct_fg },
		TSPunctSpecial = { fg = punct_fg },
		TSRepeat = { fg = ansi.black },
		TSString = { fg = string_fg },
		TSStringRegex = { bg = bg, fg = "#777777" },
		TSStringEscape = { bg = bg, fg = "#777777" },
		TSSymbol = {},
		TSType = { fg = ansi.black },
		TSTypeBuiltin = { fg = ansi.black },
		TSVariable = { fg = ansi.black },
		TSVariableBuiltin = { fg = ansi.black },
		TSTag = { fg = ansi.black },
		TSTagDelimiter = { fg = punct_fg },
		TSText = { fg = ansi.black },

		["@attribute"] = {},
		["@constructor"] = { fg = ansi.black },
		["@conditional"] = { fg = ansi.black },
		["@constant.builtin"] = { fg = const_fg },
		["@constant.macro"] = { fg = ansi.black },
		["@error"] = { bg = mistake.bg, fg = mistake.fg },
		["@exception"] = { fg = ansi.black },
		["@field"] = { fg = ansi.black },
		["@function"] = { fg = ansi.black },
		["@function.builtin"] = { fg = ansi.black },
		["@function.macro"] = { fg = ansi.black },
		["@keyword"] = { fg = ansi.black },
		["@keyword.function"] = { fg = ansi.black },
		["@label"] = { fg = ansi.black },
		["@method"] = { fg = ansi.black },
		["@module"] = { fg = ansi.black },
		["@namespace"] = { fg = ansi.black },
		["@none"] = { fg = const_fg },
		["@parameter"] = { fg = ansi.black },
		["@parameter.reference"] = { fg = ansi.black },
		["@property"] = { fg = ansi.black },
		["@punctuation.delimiter"] = { fg = punct_fg },
		["@punctuation.bracket"] = { fg = punct_fg },
		["@punctuation.special"] = { fg = punct_fg },
		["@repeat"] = { fg = ansi.black },
		["@string"] = { fg = string_fg },
		["@string.regex"] = { bg = bg, fg = "#777777" },
		["@string.escape"] = { bg = bg, fg = "#777777" },
		["@symbol"] = {},
		["@type"] = { fg = ansi.black },
		["@type.builtin"] = { fg = ansi.black },
		["@variable"] = { fg = ansi.black },
		["@variable.builtin"] = { fg = ansi.black },
		["@tag"] = { fg = ansi.black },
		["@tag.delimiter"] = { fg = punct_fg },
		["@text"] = { fg = ansi.black },
		["@text.note"] = { bg = "#dddddd", fg = ansi.blue },
		["@text.warning"] = { bg = "#FFDEAA", fg = ansi.blue },

		--- Theme specific
		["@AlabasterConstant"] = { fg = const_fg },
		["@AlabasterDefinition"] = { fg = def_fg },
		["@AlabasterPunct"] = { fg = punct_fg },
		["@AlabasterString"] = { fg = string_fg },
		["@AlabasterHashbang"] = { fg = dim_comment },
		--- Gitsigns
		GitSignsAdd = { fg = "#6abf40" },
		GitSignsChange = { fg = diffchange },
		GitSignsDelete = { fg = diffdelete },
		--- Telescope
		TelescopeBorder = { fg = "#abbdc0" },
		TelescopeMatching = { fg = "#CC6F14" },
		TelescopeMultiSelection = { fg = ansi.magenta },
		TelescopePromptPrefix = { fg = ansi.blue },
		TelescopeSelectionCaret = { fg = mistake.fg },
		TelescopeTitle = { fg = ansi.yellow },
		TelescopeResultsTitle = { fg = ansi.yellow },
		--- fzf-lua
		FzfLuaBorder = { fg = "#abbdc0" },
		--- Neogit
		NeogitPopupActionDisabled = { fg = darker_fg },
		NeogitPopupActionKey = { fg = ansi.magenta },
		NeogitPopupOptionDisabled = { fg = darker_fg },
		NeogitPopupOptionKey = { fg = ansi.blue },
		NeogitPopupSwitchDisabled = { fg = darker_fg },
		NeogitPopupSwitchEnabled = { fg = ansi.cyan },
		NeogitPopupSwitchKey = { fg = ansi.magenta },
		--- Fugitive
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },
		--- Startify
		StartifyBracket = { fg = darker_fg },
		StartifyFile = { fg = ansi.black },
		StartifySection = { fg = ansi.green },
		StartifySlash = { fg = "#4e6e75" },
		StartifyPath = { fg = "#4e6e75" },
		--- Statusline
		StatuslineAdd = { fg = diffadd, bg = statusline },
		StatuslineErr = { fg = "#8E1410", bg = statusline },
		StatuslineHint = { fg = hint, bg = statusline },
		StatuslineInfo = { fg = info, bg = statusline },
		StatuslineWarn = { fg = warn, bg = statusline },
		StatuslineBlue = { fg = ansi.blue, bg = statusline },
		StatuslineRed = { fg = ansi.red, bg = statusline },
		StatuslineGreen = { fg = ansi.green, bg = statusline },
		StatuslineCyan = { fg = ansi.cyan, bg = statusline },
		StatuslineMagenta = { fg = ansi.magenta, bg = statusline },
		--- ALE
		ALEWarningSign = { fg = warn },
		--- vim-matchup
		MatchupVirtualText = { fg = ansi.yellow },
		--- For `highlight link`
		AlabasterBlack = { fg = ansi.black },
		AlabasterBlue = { fg = ansi.blue },
		AlabasterBrightYellow = { fg = ansi.brightyellow },
		AlabasterCyan = { fg = ansi.cyan },
		AlabasterGreen = { fg = ansi.green },
		AlabasterBrightGreen = { fg = "#60cb00" },
		AlabasterMagenta = { fg = ansi.magenta },
		AlabasterRed = { fg = ansi.red },
		AlabasterWhite = { fg = ansi.black },
		AlabasterYellow = { fg = ansi.yellow },
		--- Hop
		HopNextKey = { fg = ansi.yellow },
		HopNextKey1 = { fg = ansi.blue },
		HopNextKey2 = { fg = "#17A2D6" },
		HopUnmatched = { fg = "#bfbfbf" },
		--- Lightspeed
		LightspeedGreyWash = { fg = "#bfbfbf" },
		--- checkhealth
		healthSuccess = { fg = ansi.green, bg = bg },
		--- cmp
		CmpItemMenuDefault = { fg = ansi.magenta },
		--- nvim-ts-rainbow
		rainbowcol1 = { fg = ansi.yellow },
		rainbowcol2 = { fg = ansi.magenta },
		rainbowcol3 = { fg = ansi.blue },
		rainbowcol4 = { fg = ansi.green },
		rainbowcol5 = { fg = ansi.brightyellow },
		rainbowcol6 = { fg = ansi.red },
		rainbowcol7 = { fg = ansi.cyan },
		--- Iswap
		ISwapSnipe = { bg = ansi.yellow, fg = bg },
		ISwapGrey = { fg = "#bfbfbf" },
		--- vim-dadbod-ui
		dbui_help = { fg = dim_comment },
		dbui_connection_source = { fg = dim_comment },
		--- nvim-dap-virtual-text
		NvimDapVirtualText = { bg = "#78D2C9", fg = fg },
		--- Noice
		NoiceCmdlineIcon = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorder = { link = "AlabasterBrightGreen" },
		NoiceConfirmBorder = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderCmdline = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconCmdline = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderFilter = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconFilter = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderLua = { link = "AlabasterBrightGreen" },
		NoiceCmdlineIconLua = { link = "AlabasterBrightGreen" },
		NoiceCmdlinePopupBorderSearch = { link = "AlabasterYellow" },
		NoiceCmdlineIconSearch = { link = "AlabasterYellow" },
		-- Languages
		--- asm
		asmDirective = { fg = dim_comment },
		nasmLabel = { link = "@AlabasterDefinition" },
		["@lsp.mod.declaration"] = { fg = fg },
		["@lsp.type.enumMember"] = { fg = fg },
		["@lsp.type.function"] = { fg = fg },
		["@lsp.type.method"] = { fg = fg },
		["@lsp.type.selfKeyword"] = { fg = fg },
		["@lsp.typemod.class.declaration"] = { fg = def_fg },
		["@lsp.typemod.class.definition"] = { fg = def_fg },
		["@lsp.typemod.enum.declaration"] = { fg = def_fg },
		["@lsp.typemod.enumMember.defaultLibrary"] = { fg = fg },
		["@lsp.typemod.function.declaration"] = { fg = def_fg },
		["@lsp.typemod.function.definition"] = { fg = def_fg },
		["@lsp.typemod.macro.declaration"] = { fg = def_fg },
		["@lsp.typemod.method.declaration"] = { fg = def_fg },
		["@lsp.typemod.method.definition"] = { fg = def_fg },
		["@lsp.typemod.selfKeyword"] = { fg = fg },
		["@lsp.typemod.struct.declaration"] = { fg = def_fg },
		["@lsp.typemod.type.declaration"] = { fg = def_fg },
	}
end

for group, hl in pairs(theme) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- vi:nowrap
