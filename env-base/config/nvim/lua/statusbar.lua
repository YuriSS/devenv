vim.cmd [[
	highlight User1 ctermbg=8
	highlight User2 ctermbg=7 ctermfg=0
	highlight User3 ctermbg=2 ctermfg=0
	highlight User4 ctermbg=6 ctermfg=0
	highlight User5 ctermbg=5
	highlight User6 ctermbg=3 ctermfg=0
	let s:modes ={
			\ 'n'  : ['%3*', 'N'],
			\ 'i'  : ['%4*', 'I'],
			\ 'v'  : ['%5*', 'V'],
			\ 'r'  : ['%6*', 'R'],
			\ }
	function! ModeColor() abort
		return get(s:modes, tolower(mode()), '%*')[0]
	endfunction
	function! CurrentMode() abort
		return ' ' . get(s:modes, tolower(mode()), '-')[1] . ' '
	endfunction
	function! GitBranch()
    let branch=FugitiveStatusline()
		if branch != ''
			return ' ' . branch . ' '
		else
			return ''
		endif
	endfunction
	function! Statusline()
		let status=""
		let status.=ModeColor()
		let status.=CurrentMode()
		let status.="%1* %f "
		let status.="%2* %m "
		let status.="%= "
		let status.=GitBranch()
		let status.="%1* %04.l:%03.c "
		return status
	endfunction
	set statusline=%!Statusline()
]]
