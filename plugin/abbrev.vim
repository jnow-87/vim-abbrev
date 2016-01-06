if exists('g:loaded_abbrev') || &compatible
	finish
endif

let g:loaded_abbrev = 1

" brief	add command alias for 'exe'-mode commands
function s:abbrev_exec(abbrev, expansion)
	exec 'cabbr ' . a:abbrev . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbrev . '"<CR>'
endfunction

command -nargs=+ Cabbrev call s:abbrev_exec(<f-args>)


" default abbreviations
call s:abbrev_exec("W", "w")
call s:abbrev_exec("Q", "q")
