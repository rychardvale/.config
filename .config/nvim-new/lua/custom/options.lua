local o = vim.opt
local g = vim.g

vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175]])
vim.cmd([[set listchars=eol:↵,trail:~,tab:>-,nbsp:␣,space:·]])
g.mapleader = " "
g.clipboard = {
	name = "pbcopypaste",
	copy = {
		["+"] = "pbcopy",
		["*"] = "pbcopy",
	},
	paste = {
		["+"] = "pbpaste",
		["*"] = "pbpaste",
	},
	cache_enabled = 1,
}
o.clipboard = "unnamed"
o.expandtab = false
o.tabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.showcmd = true
o.smarttab = true
o.ignorecase = true
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.laststatus = 2
o.showtabline = 2
o.writebackup = false
o.updatetime = 250
o.timeoutlen = 300
o.cursorline = true
o.termguicolors = true
o.background = "dark"
o.showmode = false
o.scrolloff = 10
o.sidescrolloff = 10
o.wrap = true
o.swapfile = false
o.undofile = true
o.completeopt = "menuone,noselect"
o.breakindent = true

o.relativenumber = true
o.number = true

o.showtabline = 0
g.loaded_sql_completion = 0
g.ftplugin_sql_omni_key = "ç"

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
vim.cmd([[set pumblend=10]])
vim.cmd([[set winblend=10]])
vim.api.nvim_set_hl(0, "CursorLine", {blend=10})
