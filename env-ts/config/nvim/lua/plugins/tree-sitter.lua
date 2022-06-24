require'nvim-treesitter.configs'.setup {
	ensure_installed = { 'css', 'html', 'javascript', 'typescript', 'tsx', 'json' },
	sync_install = false,
  autopairs = {
    enable = true,
  },
	highlight = {
		enable = true,
    additional_vim_regex_highlighting = true,
	},
  indent = { enable = true },
  context_commentstring = { enable = true },
}
